// import 'dart:async';
// import 'package:content/content.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';
// import '../bootstrap/di/injectable/app_injector.dart';
// import '../bootstrap/di/module/inject_module.dart';
// import '../bootstrap/di/module/reslover.dart';
// import '../bootstrap/di/module/router_module.dart';
// import '../env/halo_env.dart';
// import '../screen/manager.dart';
// import 'ota_application_main.dart';
//
// class AppBootstrap {
//   AppBootstrap._();
//
//   static final AppBootstrap _instance = AppBootstrap._();
//
//   static AppBootstrap get I => _instance;
//
//   /// The injectorModule combined from the feature modules
//   final List<InjectionModule> injectorModules = <InjectionModule>[];
//
//   /// The routerModule combined from the feature modules
//   final List<RouterModule> routerModules = <RouterModule>[];
//
//   /// The localizations combined from the feature modules
//   final List<LocalizationsDelegate> localizations = [
//     AppLocalizations.delegate,
//     GlobalMaterialLocalizations.delegate,
//     GlobalCupertinoLocalizations.delegate,
//     GlobalWidgetsLocalizations.delegate,
//   ];
//
//   final List<Locale> localeSupports = [
//     ...StringApp.supportedLocales,
//   ];
//
//   /// Init resolvers and configuration module
//   /// see [Bootstrap]
//   Future<Widget?> init(DevConfig config) async {
//     await AppEnv.I.invoke();
//     config.int();
//     Intl.defaultLocale = AppEnv.I.defaultLangCode;
//     /// To ensure the running application does not crash when executing async tasks
//     return runZoned(() => _handleStart([...config.getResolver()]));
//   }
//
//   Future<Widget> _handleStart(List<Resolver> resolvers) async {
//     await Future.forEach<Resolver>(
//       resolvers,
//       (resolver) async {
//         /// add localization
//         resolver.localeDelegate?.also((self) {
//           localizations.add(self);
//         });
//
//         /// add router module
//         resolver.routerModule?.also((self) {
//           routerModules.add(self);
//         });
//
//         /// register dependencies
//         await resolver.injectModule.let((self) {
//           return self.dependencies(
//             env: AppEnv.I,
//             injector: AppInjector.I,
//           );
//         });
//       },
//     ).then((_) async {
//       /// initialization data module with env
//       final appStartUseCase = AppInjector.I.get<AppStartUseCase>();
//       await appStartUseCase.invoke(AppEnv.I);
//     });
//     return NewOTAApp(
//         localeSupports: localeSupports,
//         languageDefault: AppEnv.I.defaultLangCode,
//         localizationsDelegates: localizations,
//         onGenerateRoute: (settings) {
//           for (var routerModule in routerModules) {
//             final router = routerModule.generateRoute(settings);
//             if (router != null) {
//               return router;
//             }
//           }
//           return MaterialPageRoute(builder: (_) => const ManagerPage());
//         });
//   }
// }
