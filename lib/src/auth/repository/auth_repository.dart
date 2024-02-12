import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:me/src/common/model/login_response.dart';

class AuthRepository {
  final String baseUrl;
  final Dio dio;

  AuthRepository({required this.baseUrl, required this.dio});

  Future<LoginResponse> signup({
    required String email,
    required String password,
    required String nickName,
  }) async {
    final resp = await dio.post('$baseUrl/auth/register/email',
        data: {"email": email, "password": password, "nickName": nickName});

    return LoginResponse.fromJson(resp.data);
  }

  Future<LoginResponse> login(
      {required String email, required String password}) async {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String encoded = stringToBase64.encode('$email:$password');

    final resp = await dio.post(
      '$baseUrl/auth/login/email',
      options: Options(headers: {'authorization': 'Basic $encoded'}),
    );

    return LoginResponse.fromJson(resp.data);
  }
}
