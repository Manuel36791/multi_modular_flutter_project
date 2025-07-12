import 'package:domain/model/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:login/data/mapper/login_mapper.dart';
import 'package:login/data/remote/login_remote_data_source.dart';

import '../../domain/model/login_model.dart';
import '../../domain/repository/login_repo.dart';
import '../request/login_request.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepoImpl(this.loginRemoteDataSource);

  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest) async {
    final result = await loginRemoteDataSource.login(loginRequest);
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(response.toDomain()),
    );
  }
}
