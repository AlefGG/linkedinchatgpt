import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'keys.env')
abstract class Env {
  @EnviedField(varName: 'APIKEY_CHATGPT')
  static const String apiKeyChatgpt = _Env.apiKeyChatgpt;
  @EnviedField(varName: 'APIKEY_LINKEDIN')
  static const String apiKeyLinkedin = _Env.apiKeyLinkedin;
}
