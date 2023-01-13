import 'package:intl/intl.dart';

import '../device.dart';
import 'flavor.dart';

const String kCurrencyPrefKey = "currency";
const String kLanguageCodePrefKey = "language-code";

/// Global configuration the application halo
/// see [Flavor],[Host],[Debug]
abstract class Env {
  abstract String appFlavor;
  abstract String appHost;
  abstract bool appInstalled;
  abstract bool appLogger;
  abstract String defaultLangCode;
  abstract String defaultCurrency;
  abstract String defaultDateFormat;

  Map<String, String> get paths;

  Map<String, String> get keys;

  Map<String, String> get extras;

  /// The [HaloEnv] has 3 brand flavors for build (release, prod, mock)
  /// see [Flavor] for detail

  Flavor get flavor {
    return Flavor.values.firstWhere(
      (element) => element.value == appFlavor,
    );
  }

  bool get isFlavorRelease => flavor == Flavor.release;

  bool get isFlavorDev => isFlavorRelease ? false : flavor == Flavor.dev;

  bool get isFlavorPlugin => isFlavorRelease ? false : flavor == Flavor.plugin;

  /// Show logger
  /// When Application run on Release Flavor => logger will disable by default

  bool get isLogger {
    if (flavor == Flavor.release) {
      return false;
    }
    return appLogger;
  }

  /// Getter
  /// Get device info and cache

  int get timeMinusRefreshToken => 30;

  int get timeOutRequestApi => 6;

  String get app => DeviceInfo.I.getApp;

  String get userUrgent => DeviceInfo.I.userUrgent;

  String get deviceId => DeviceInfo.I.deviceId ?? '';

  String get systems => DeviceInfo.I.systems;

  String get device => DeviceInfo.I.device;

  // String get currentIpNetwork => GetIpUtil.I.currentIpNetwork ?? '';

  String get langeCode => Intl.defaultLocale ?? defaultLangCode;

  @Deprecated('lấy cache là future nên cần lấy bẳng cách khác')
  String get currency => defaultCurrency;

  /// Utils
  /// ==========================================================================

  String getPath(String key) {
    return paths[key]!;
  }

  String getExtra(String key) {
    return extras[key]!;
  }

  String getKey(String key) {
    return keys[key]!;
  }
}
