import 'package:envied/envied.dart';

part 'data_config.generate.dart';

@Envied(
  obfuscate: false,
  path: '.halo.example.env',
)
class DataConfig {
  @EnviedField(varName: "APP_FLAVOR")
  static const String appFlavor = _DataConfig.appFlavor;

  @EnviedField(varName: "APP_HOST")
  static const String appHost = _DataConfig.appHost;

  @EnviedField(varName: "APP_LOGGER")
  static const bool appLogger = _DataConfig.appLogger;

  @EnviedField(varName: "APP_INSTALLED")
  static const bool appInstalled = _DataConfig.appInstalled;

  @EnviedField(varName: "APP_CURRENCY")
  static const String defaultCurrency = _DataConfig.defaultCurrency;

  @EnviedField(varName: "APP_DATE_FORMAT")
  static const String defaultDateFormat = _DataConfig.defaultDateFormat;

  @EnviedField(varName: "APP_LANG")
  static const String defaultLangCode = _DataConfig.defaultLangCode;

  @EnviedField(varName: "TIME_OUT_NETWORK")
  static const int timeOutRequestApi = _DataConfig.timeOutRequestApi * 1000;

  @EnviedField(varName: "TIME_EXPIRED_TOKEN_LIVE")
  static const int timeExpiredTokenLive = _DataConfig.timeExpiredTokenLive;

  @EnviedField(varName: "TIME_EXPIRED_TOKEN_TEST")
  static const int timeExpiredTokenTest = _DataConfig.timeExpiredTokenTest;
}
