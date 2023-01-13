// import 'dart:async';
//
// import 'package:confict/bootstrap/di/injectable/injector.dart';
// import 'package:confict/bootstrap/di/module/inject_module.dart';
// import 'package:confict/bootstrap/env/env.dart';
//
// class DataInjectionModule extends InjectionModule {
//   DataInjectionModule._();
//
//   static final DataInjectionModule _instance = DataInjectionModule._();
//
//   static DataInjectionModule get I => _instance;
//
//   @override
//   Future<void> dependencies({
//     required Injector injector,
//     required Env env,
//   }) async {
//     await AuthInjectorModule.I.dependencies(injector: injector, env: env);
//     await _configureDependencies();
//   }
// }
//
// class DataRequirePreResolve extends MicroPackageModule {
//   @override
//   FutureOr<void> init(GetItHelper gh) async {
//     /// storage locator register
//     if (!gh.getIt.isRegistered<DeviceInfo>()) {
//       gh.factory<DeviceInfo>(() => DeviceInfo.I);
//     }
//     if (!gh.getIt.isRegistered<GetIpUtil>()) {
//       gh.factory<GetIpUtil>(() => GetIpUtil.I);
//     }
//   }
// }
//
// @InjectableInit(
//   externalPackageModulesBefore: [ExternalModule(DataRequirePreResolve)],
//   initializerName: 'initData',
//   preferRelativeImports: false,
//   asExtension: false,
// )
// Future _configureDependencies() async {
//   await initData(AppInjector.I.instance);
// }
