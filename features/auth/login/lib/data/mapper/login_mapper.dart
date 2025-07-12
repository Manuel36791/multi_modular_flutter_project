import 'package:extensions/constants/extensions_constants.dart';
import 'package:extensions/extensions.dart';

import '../../domain/model/login_model.dart';
import '../response/login_response.dart';

extension LoginResponseMapper on LoginResponse? {
  LoginModel toDomain() => LoginModel(
    name: this?.name.orEmpty() ?? ExtensionsConstants.empty,
    phone: this?.phone.orEmpty() ?? ExtensionsConstants.empty,
    age: this?.age.orZero() ?? ExtensionsConstants.zero,
  );
}
