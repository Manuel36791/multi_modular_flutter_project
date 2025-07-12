import 'package:domain/model/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../data/request/login_request.dart';
import '../model/login_model.dart';

abstract class LoginRepo {
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest);
}
