import 'package:confict/bootstrap/di/injectable/app_injector.dart';
import 'package:confict/bootstrap/env/env.dart';
import 'package:content/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:content/localizations.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/loading/easy_loading.dart';
import '../di/routers.dart';
import '../screen/manager.dart';

/// HaloFlutterApp =============================================================
class NewOTAApp extends StatefulWidget {
  final String languageDefault;
  final List<Locale> localeSupports;
  final List<LocalizationsDelegate> localizationsDelegates;

  final Route<dynamic> Function(RouteSettings settings) onGenerateRoute;

  const NewOTAApp({
    Key? key,
    required this.onGenerateRoute,
    required this.localeSupports,
    required this.languageDefault,
    required this.localizationsDelegates,
  }) : super(key: key);

  @override
  State<NewOTAApp> createState() => _NewOTAAppState();
}

class _NewOTAAppState extends State<NewOTAApp> {
  @override
  Widget build(BuildContext context) => Builder(
    builder: (context) {
      /// tạm thời chưa support dark nên mặc định là false
      SystemChrome.setSystemUIOverlayStyle(getSystemOverlay(false));
      _initLoader();
      return MaterialApp(
        //navigatorObservers: [routeObserver],
        //navigatorKey: NavigationService.navigatorKey,

        /// ==> Theme
        /// dart themes depend on dark theme
        theme: AppThemes.haloLightTheme,
        darkTheme: AppThemes.haloLightTheme,

        /// ==> Router
        onGenerateRoute: (settings) => _genRoute(settings),
        //onGenerateInitialRoutes: (name) => [_genRoute(argument, null)],
        // home: const FeedScreenImp(),
        initialRoute: AppRouters.feed,

        /// ==> Lang
        locale: _findLocale(AppInjector.I.get<Env>().defaultLangCode),
        supportedLocales: widget.localeSupports,
        localeResolutionCallback: _localeResolution,
        localizationsDelegates: widget.localizationsDelegates
          ..addAll(AppLocalizations.localizationsDelegates)/*..addAll(StrTour.localizationsDelegates)*/,

        /// ==> Other
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: true,

        /// tạm thời chưa support dark
        builder: EasyLoading.init(),
      );
    },
  );

  Route<dynamic> _genRoute(RouteSettings? settings) {
    if (settings != null) {
      return widget.onGenerateRoute(settings);
    }

    return MaterialPageRoute(
      builder: (_) => const ManagerPage(),
    );
  }

  Locale? _localeResolution(
    Locale? deviceLocale,
    Iterable<Locale> supportedLocales,
  ) {
    /// Intl need locale default
    /// it depend on Locale of native device setting
    /// if Locale not found => default is Locale("en")

    var languageCode = deviceLocale?.languageCode ?? L10n.all.first.languageCode;

    Intl.defaultLocale = languageCode;
    return Locale(languageCode);
  }

  Locale _findLocale(String? code) {
    return L10n.all
        .firstWhere((element) => element.languageCode.toUpperCase() == code?.toUpperCase());
  }

  void _initLoader() {
    final iconError = Icon(
      Icons.error_outline,
      size: 24,
      color: context.colorScheme.error,
    );

    EasyLoading.instance
      ..animationDuration = const Duration(milliseconds: 200)
      ..contentPadding = const EdgeInsets.all(16)
      // loading style
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorType = EasyLoadingIndicatorType.lottie
      ..indicatorSize = 150
      ..indicatorColor = context.primaryColor
      ..radius = 16
      // progress style
      ..progressColor = context.primaryColor
      ..backgroundColor = Colors.grey.shade300.withAlpha(100)
      ..textColor = context.surfaceColor
      // Error style
      ..errorWidget = iconError
      ..textStyle = context.bodyMedium
      ..userInteractions = false
      ..dismissOnTap = false;
  }
}
