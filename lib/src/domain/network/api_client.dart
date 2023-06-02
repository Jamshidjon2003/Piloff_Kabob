import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ploffe_kebab/src/core/constants/constants.dart';
import 'package:ploffe_kebab/src/data/models/auth/send_message_request.dart';
import 'package:ploffe_kebab/src/data/models/auth/send_message_response.dart';
import 'package:ploffe_kebab/src/data/models/auth/verify_request.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) =>
      _ApiClient(dio, baseUrl: baseUrl);

  ///
  @POST('v2/send-message')
  Future<SendMessageResponse> sendMessage(
    @Body() SendMessageRequest request,
  );

  @POST('v2/verify-email/{smsId}/{otp}')
  Future<SendMessageResponse> verifySmsCode(
    @Body() VerifyRequest request,
    @Path("smsId") String smsId,
    @Path("otp") String otp,
  );
}