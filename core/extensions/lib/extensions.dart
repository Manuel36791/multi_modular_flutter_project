import 'package:extensions/constants/extensions_constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return ExtensionsConstants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullNum on num? {
  num orZero() {
    if (this == null) {
      return ExtensionsConstants.zero;
    } else {
      return this!;
    }
  }
}