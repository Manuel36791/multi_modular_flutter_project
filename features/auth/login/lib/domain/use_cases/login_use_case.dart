import 'package:domain/model/failure.dart';
import 'package:domain/use_case/base_use_case.dart';
import 'package:fpdart/fpdart.dart';

import '../../data/request/login_request.dart';
import '../model/login_model.dart';
import '../repository/login_repo.dart';

class LoginUseCase extends BaseUseCase<LoginRequest, LoginModel> {
  final LoginRepo loginRepo;

  LoginUseCase(this.loginRepo);

  @override
  Future<Either<Failure, LoginModel>> execute(LoginRequest input) {
    return loginRepo.login(input);
  }
}
