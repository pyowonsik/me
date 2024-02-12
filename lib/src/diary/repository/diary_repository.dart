import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:me/src/diary/model/diary.dart';

class DiaryRepository {
  final String baseUrl;
  final Dio dio;

  DiaryRepository({required this.baseUrl, required this.dio});

  Future<List<DiaryModel>> getDiarys(String email) async {
    final resp = await dio.get('$baseUrl/users/diarys', data: {"email": email});

    return resp.data.map<DiaryModel>((e) => DiaryModel.fromJson(e)).toList();
  }

  Future writeDiary(String title, String date, String content) async {}
}
