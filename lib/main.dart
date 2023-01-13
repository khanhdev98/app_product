import 'package:confict/bootstrap/base.dart';
import 'package:confict/bootstrap/di/injectable/app_injector.dart';
import 'package:confict/bootstrap/di/module/inject_module.dart';
import 'package:confict/bootstrap/di/module/reslover.dart';
import 'package:confict/bootstrap/env/env.dart';
import 'package:content/generate/localizations.dart';
import 'package:data/di/inject.dart';
import 'package:flutter/material.dart';
import 'package:untitled/di/resolver.dart';
import 'package:untitled/screen/manager.dart';

import 'application/ota_application_main.dart';
import 'di/injector.dart';
import 'env/app_env.dart';

main() => ProBootStrap().run(AppEnv());

class ProBootStrap extends BaseBootStrap {
  @override
  List<InjectionModule> injectionModules() => [
    // DataInjectionModule.I,
    FlutterInjector.I,
  ];

  @override
  List<Resolver> featureResolvers() => [
    AppResolver.I,
  ];

  @override
  Widget application() => NewOTAApp(
      localeSupports: const [...StringApp.supportedLocales],
      languageDefault: AppInjector.I.get<Env>().defaultLangCode,
      localizationsDelegates: localizationDelegates,
      onGenerateRoute: (settings) {
        for (var routerModule in routerModules) {
          print(routerModule.runtimeType);
          final router = routerModule.generateRoute(settings);
          if (router != null) {
            return router;
          }
        }
        return MaterialPageRoute(builder: (_) => const ManagerPage());
      });
}