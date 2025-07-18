import 'package:fpdart/fpdart.dart';

import '../model/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
