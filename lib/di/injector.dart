import 'dart:async';
import 'package:confict/bootstrap/di/injectable/app_injector.dart';
import 'package:confict/bootstrap/di/injectable/injector.dart';
import 'package:confict/bootstrap/di/module/inject_module.dart';
import 'package:confict/bootstrap/env/env.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/di/injector.config.dart';

@InjectableInit(initializerName: 'initFlutter', asExtension: true)
Future<void> _configureDependencies() async {
  AppInjector.I.instance.initFlutter();
}

class FlutterInjector extends InjectionModule {
  static final FlutterInjector _instance = FlutterInjector();

  static FlutterInjector get I => _instance;

  @override
  Future<void> dependencies({
    required Injector injector,
    required Env env,
  }) {
    return _configureDependencies();
  }
}
