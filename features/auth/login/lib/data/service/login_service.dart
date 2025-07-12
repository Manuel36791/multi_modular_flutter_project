import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/login_response.dart';

part 'login_service.g.dart';

const baseUrl = "https://minafarid.mocklap.io";

@RestApi(baseUrl: baseUrl)
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;

  @POST('/customers/login')
  Future<HttpResponse<LoginResponse>> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
