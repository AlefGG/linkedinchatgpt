import 'package:dio/dio.dart';
import 'package:dart_openai/dart_openai.dart';
import 'config.dart';
import 'env/env.dart';
import 'model/linkedin_response.dart';

Future<void> main() async {
  final String profileUrl = 'https://www.linkedin.com/in/dmitryrusskov/';
  final String systemRole = Configuration.systemContent;
  final LinkedinResponse linkedInData = await linkedIn(profileUrl);
  final String chatGptResponse = await chatGpt(
    systemRole: systemRole,
    linkedInData: linkedInData,
    chatGptApiKey: Env.apiKeyChatgpt,
  );
  print('$chatGptResponse');
}

Future<LinkedinResponse> linkedIn(profileUrl) async {
  final httpClient = Dio();
  final apiEndpoint = 'https://nubela.co/proxycurl/api/v2/linkedin';
  try {
    final response = await httpClient.get(
      apiEndpoint,
      queryParameters: {
        'linkedin_profile_url': '$profileUrl',
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer ${Env.apiKeyLinkedin}',
        },
      ),
    );
    return LinkedinResponse.fromJson(response.data);
  } catch (e) {
    print(e);
    throw Exception(e);
  }
}

Future<String> chatGpt({
  required String systemRole,
  required LinkedinResponse linkedInData,
  required String chatGptApiKey,
}) async {
  final String userContent = linkedInData.summary ?? '';
  try {
    OpenAI.apiKey = chatGptApiKey;
    final competion = await OpenAI.instance.chat.create(
      model: 'gpt-3.5-turbo',
      temperature: 0.4,
      messages: [
        OpenAIChatCompletionChoiceMessageModel(
          role: OpenAIChatMessageRole.system,
          content: systemRole,
        ),
        OpenAIChatCompletionChoiceMessageModel(
          role: OpenAIChatMessageRole.user,
          content: userContent,
        ),
      ],
    );
    print(' ULULU $competion ULULU');
    return competion.choices.first.message.content;
  } catch (e) {
    print(e);
    throw Exception(e);
  }
}
