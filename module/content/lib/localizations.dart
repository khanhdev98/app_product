import 'package:flutter/widgets.dart';
import 'generate/localizations.dart';

abstract class AppLocalizations extends StringApp {
  AppLocalizations(String locale) : super(locale);

  static List<Locale> get supportedLocales => StringApp.supportedLocales;

  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates =>
      StringApp.localizationsDelegates;

  static StringApp? of(BuildContext context) {
    return StringApp.of(context);
  }

  static const LocalizationsDelegate<StringApp> delegate = StringApp.delegate;

  String bankWhenNull(String? Function(StringApp? localizations) getStrings) {
    final text = getStrings.call(this);
    return text ?? "";
  }
}

extension LocalizationExtension on BuildContext {
  @Deprecated("Thay thế bằng StringApp.of(context) hoặc context.stringApp")
  StringApp? localizations() => AppLocalizations.of(this);

  StringApp get stringApp => AppLocalizations.of(this)!;

  String? getString(String? Function(StringApp? localizations) getStrings) {
    final text = getStrings.call(localizations());
    return text;
  }

  String getStringOrDefault(String? Function(StringApp? localizations) getStrings,
      {required String defaultString}) {
    final text = getStrings.call(localizations());
    return text ?? defaultString;
  }

  String getStringOrBlank(String? Function(StringApp? localizations) getStrings) {
    final text = getStrings.call(localizations());
    return text ?? "";
  }
}
