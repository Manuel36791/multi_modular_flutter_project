import 'package:domain/model/failure.dart';
import 'package:domain/model/localized_message.dart';
import 'package:fpdart/fpdart.dart';

import 'network_info.dart';

Future<Either<Failure, T>> apiSafeCall<T>(
  NetworkInfo networkInfo,
  Future<T> Function() apiCall,
) async {
  if (await networkInfo.isConnected) {
    try {
      final T response = await apiCall();
      return Right(response);
    } catch (e) {
      return Left(
        Failure(
          code: 0,
          message: LocalizedMessage(english: "", arabic: ""),
        ), // TODO: add error handler
      );
    }
  } else {
    // No internet connection
    return Left(
      Failure(
        code: -500,
        message: LocalizedMessage(
          english: "Network connection error, please try again",
          arabic: " لا يوجد اتصال بالانترنت, يرجى المحاولة مرة أخرى",
        ),
      ),
    );
  }
}
