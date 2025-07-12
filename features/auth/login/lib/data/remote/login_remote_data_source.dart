import 'package:data/network/api_safe_call.dart';
import 'package:data/network/network_info.dart';
import 'package:domain/model/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:login/data/service/login_service.dart';

import '../request/login_request.dart';
import '../response/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginService loginService;
  final NetworkInfo networkInfo;

  LoginRemoteDataSourceImpl({
    required this.loginService,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, LoginResponse>> login(
    LoginRequest loginRequest,
  ) async {
    return apiSafeCall(networkInfo, () async {
      final response = await loginService.login(
        loginRequest.email!,
        loginRequest.password!,
      );
      return response.data;
    });
  }
}
