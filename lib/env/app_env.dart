import 'package:confict/bootstrap/env/env.dart';
import 'package:confict/bootstrap/env/flavor.dart';
import 'package:confict/bootstrap/env/host.dart';
import 'data/data_config.dart';
import 'data/data_private.dart';

class AppEnv extends Env {
  @override
  late String appFlavor = DataConfig.appFlavor;

  @override
  late String appHost = DataConfig.appHost;

  @override
  bool appInstalled = DataConfig.appInstalled;

  @override
  bool appLogger = DataConfig.appLogger;

  @override
  String defaultCurrency = DataConfig.defaultCurrency;

  @override
  String defaultDateFormat = DataConfig.defaultDateFormat;

  @override
  String defaultLangCode = DataConfig.defaultLangCode;

  @override
  int get timeMinusRefreshToken {
    if (appHost == Host.test.value) {
      return DataConfig.timeExpiredTokenTest;
    } else {
      return DataConfig.timeExpiredTokenLive;
    }
  }

  @override
  Map<String, String> get keys {
    if (appFlavor == Flavor.release.value || appHost == Host.live.value) {
      return {
        "CLIENT_ID": DataPrivate.clientIdLive,
        "SECRET_UCI": DataPrivate.secretUCILive,
        "SECRET_API": DataPrivate.secretApiLive,
        "SECRET_CLIENT": DataPrivate.secretClientLive,
        "SECRET_PAYMENT": DataPrivate.secretPaymentLive,
      };
    } else {
      if (appHost == Host.staging.value) {
        return {
          "CLIENT_ID": DataPrivate.clientIdStaging,
          "SECRET_UCI": DataPrivate.secretUCIStaging,
          "SECRET_API": DataPrivate.secretApiStaging,
          "SECRET_CLIENT": DataPrivate.secretClientStaging,
          "SECRET_PAYMENT": DataPrivate.secretPaymentStaging,
        };
      } else {
        return {
          "CLIENT_ID": DataPrivate.clientIdTest,
          "SECRET_UCI": DataPrivate.secretUCITest,
          "SECRET_API": DataPrivate.secretApiTest,
          "SECRET_CLIENT": DataPrivate.secretClientTest,
          "SECRET_PAYMENT": DataPrivate.secretPaymentTest,
        };
      }
    }
  }

  @override
  Map<String, String> get paths {
    if (appFlavor == Flavor.release.value || appHost == Host.live.value) {
      return {
        'GATEWAY_HOST': DataPrivate.gatewayHostLive,
        'CORE_HOST': DataPrivate.coreHostLive,
        'ES_HOST': DataPrivate.esHostLive,
      };
    } else {
      if (appHost == Host.staging.value) {
        return {
          'GATEWAY_HOST': DataPrivate.gatewayHostStaging,
          'CORE_HOST': DataPrivate.coreHostStaging,
          'ES_HOST': DataPrivate.esHostStaging,
        };
      } else {
        return {
          'GATEWAY_HOST': DataPrivate.gatewayHostTest,
          'CORE_HOST': DataPrivate.coreHostTest,
          'ES_HOST': DataPrivate.esHostTest,
        };
      }
    }
  }

  @override
  Map<String, String> get extras {
    return {
      "PAYMENT_PRIVATE": '_secretPaymentPrivate',
    };
  }
}
