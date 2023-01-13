// ignore_for_file: implementation_imports

import 'package:confict/bootstrap/di/module/router_module.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screen/feed_screen.dart';


class AppRouters extends RouterModule {
  AppRouters._();

  static final AppRouters _instance = AppRouters._();

  static AppRouters get I => _instance;
  static const String feed = '/feed';
  @override
  List<String> routers = [feed];

  @override
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case feed:
        return materialPageRoute(
          builder: (context) => const FeedScreen(),
          settings: settings,
        );
      // case "/tourDetail":
      //   return materialPageRoute(
      //       settings: settings,
      //       builder: (_) => BlocProvider(
      //           create: (context) =>  BlocTourDetail(tourDetailRepo: AppInjector.I.get<TourDetailRepository>()),
      //           child:  TourDetailView(
      //             tourModel: settings.arguments as String?,
      //           )
      //       ));
    }

    return null;
  }

  materialPageRoute({
    required Widget Function(BuildContext) builder,
    required RouteSettings settings,
  }) {
    return MaterialPageRoute(
      settings: settings,
      builder: builder,
    );
  }
}
