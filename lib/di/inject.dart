import 'package:confict/bootstrap/di/injectable/injector.dart';
import 'package:confict/bootstrap/di/module/inject_module.dart';
import 'package:confict/bootstrap/env/env.dart';

class AppInjectionModule extends InjectionModule {
  AppInjectionModule._();

  static final AppInjectionModule _instance = AppInjectionModule._();

  static AppInjectionModule get I => _instance;

  @override
  Future<void> dependencies({required Injector injector, required Env env}) async {}
}