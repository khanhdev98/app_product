import 'package:envied/envied.dart';

part 'data_private.generate.dart';

@Envied(
  obfuscate: true,
  path: '.data.env',
)
class DataPrivate {
  // ====== Live

  @EnviedField(varName: "ES_HOST_LIVE")
  static final String esHostLive = _DataPrivate.esHostLive;
  @EnviedField(varName: "CORE_HOST_LIVE")
  static final String coreHostLive = _DataPrivate.coreHostLive;
  @EnviedField(varName: "GATEWAY_HOST_LIVE")
  static final String gatewayHostLive = _DataPrivate.gatewayHostLive;
  @EnviedField(varName: "CLIENT_ID_LIVE")
  static final String clientIdLive = _DataPrivate.clientIdLive;
  @EnviedField(varName: "SECRET_PAYMENT_LIVE")
  static final String secretPaymentLive = _DataPrivate.secretPaymentLive;
  @EnviedField(varName: "SECRET_API_KEY_LIVE")
  static final String secretApiLive = _DataPrivate.secretApiLive;
  @EnviedField(varName: "SECRET_CLIENT_LIVE")
  static final String secretClientLive = _DataPrivate.secretClientLive;
  @EnviedField(varName: "SECRET_UCI_LIVE")
  static final String secretUCILive = _DataPrivate.secretUCILive;

  // ====== Staging

  @EnviedField(varName: "ES_HOST_LIVE")
  static final String esHostStaging = _DataPrivate.esHostStaging;
  @EnviedField(varName: "CORE_HOST_LIVE")
  static final String coreHostStaging = _DataPrivate.coreHostStaging;
  @EnviedField(varName: "GATEWAY_HOST_STAGING")
  static final String gatewayHostStaging = _DataPrivate.gatewayHostStaging;
  @EnviedField(varName: "CLIENT_ID_LIVE")
  static final String clientIdStaging = _DataPrivate.clientIdStaging;
  @EnviedField(varName: "SECRET_PAYMENT_LIVE")
  static final String secretPaymentStaging = _DataPrivate.secretPaymentStaging;
  @EnviedField(varName: "SECRET_API_KEY_LIVE")
  static final String secretApiStaging = _DataPrivate.secretApiStaging;
  @EnviedField(varName: "SECRET_CLIENT_LIVE")
  static final String secretClientStaging = _DataPrivate.secretClientStaging;
  @EnviedField(varName: "SECRET_UCI_LIVE")
  static final String secretUCIStaging = _DataPrivate.secretUCIStaging;

  // ======= Test

  @EnviedField(varName: "ES_HOST_TEST")
  static final String esHostTest = _DataPrivate.esHostTest;
  @EnviedField(varName: "CORE_HOST_TEST")
  static final String coreHostTest = _DataPrivate.coreHostTest;
  @EnviedField(varName: "GATEWAY_HOST_TEST")
  static final String gatewayHostTest = _DataPrivate.gatewayHostTest;
  @EnviedField(varName: "CLIENT_ID_TEST")
  static final String clientIdTest = _DataPrivate.clientIdTest;
  @EnviedField(varName: "SECRET_PAYMENT_TEST")
  static final String secretPaymentTest = _DataPrivate.secretPaymentTest;
  @EnviedField(varName: "SECRET_API_KEY_TEST")
  static final String secretApiTest = _DataPrivate.secretApiTest;
  @EnviedField(varName: "SECRET_CLIENT_TEST")
  static final String secretClientTest = _DataPrivate.secretClientTest;
  @EnviedField(varName: "SECRET_UCI_TEST")
  static final String secretUCITest = _DataPrivate.secretUCITest;

  // ======= Constant
  @EnviedField(varName: "PAYMENT_PRIVATE")
  static final String paymentPrivateKey = _DataPrivate.paymentPrivateKey;
}
