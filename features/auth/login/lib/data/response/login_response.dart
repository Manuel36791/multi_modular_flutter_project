import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LoginResponse {
  final String? name;
  final String? phone;
  final num? age;

  const LoginResponse({
    this.name,
    this.phone,
    this.age,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

}