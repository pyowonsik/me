import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.g.dart';
part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    required String? email,
    required String? password,
    required String? nickName,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
