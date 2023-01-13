import 'package:confict/bootstrap/di/module/inject_module.dart';
import 'package:confict/bootstrap/di/module/reslover.dart';
import 'package:confict/bootstrap/di/module/router_module.dart';
import 'package:untitled/di/routers.dart';
import 'inject.dart';

class AppResolver extends Resolver {
  AppResolver._();

  static final AppResolver _instance = AppResolver._();

  static AppResolver get I => _instance;

  @override
  InjectionModule get injectModule => AppInjectionModule.I;

  @override
  RouterModule? get routerModule => AppRouters.I;
}
