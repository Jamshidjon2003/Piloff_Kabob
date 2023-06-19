import 'package:dio/dio.dart';
import 'package:ploff_final/src/core/constants/constants.dart';
import 'package:ploff_final/src/data/models/auth/confirm_request.dart';
import 'package:ploff_final/src/data/models/auth/confirm_response.dart';
import 'package:ploff_final/src/data/models/auth/login_request.dart';
import 'package:ploff_final/src/data/models/auth/login_response.dart';
import 'package:ploff_final/src/data/models/auth/phone_request.dart';
import 'package:ploff_final/src/data/models/auth/phone_response.dart';
import 'package:ploff_final/src/data/models/auth/register_request.dart';
import 'package:ploff_final/src/data/models/auth/register_response.dart';
import 'package:ploff_final/src/data/models/home/banner_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) =>
      _ApiClient(dio, baseUrl: baseUrl);

  @POST(Urls.GET_CUSTOMERS + DatabaseKeys.phone)
  Future<PhoneResponse> phone(
    @Body() PhoneRequest request,
  );

  @POST(Urls.GET_CUSTOMERS + DatabaseKeys.login)
  Future<LoginResponse> login(
    @Body() LoginRequest request,
  );

  @POST(Urls.GET_CUSTOMERS + DatabaseKeys.confirmLogin)
  Future<ConfirmResponse> confirmlogin(
    @Body() ConfirmRequest request,
  );

  @POST(Urls.GET_CUSTOMERS + DatabaseKeys.register)
  Future<RegisterResponse> registerlog(
    @Body() RegisterRequest request,
  );

  @POST(Urls.GET_CUSTOMERS + DatabaseKeys.registerconfirm)
  Future<ConfirmResponse> registerConfirm(
    @Body() ConfirmRequest request,
  );

  @GET(Urls.GET_BANNERS)
  Future<BannerResponse> banner();
}
