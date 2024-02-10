import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:me/src/diary/model/diary.dart';

class DiaryRepository {
  // Future<List<DiaryModel>> loadDiaryJsonData() async {
  //   var data = await rootBundle.loadString(
  //       '/Users/pyowonsik/workspace/me/lib/src/diary/mock/diary_mock_data.json');
  //   List<dynamic> decodedData = json.decode(data);

  //   List<DiaryModel> diaryList =
  //       decodedData.map((e) => DiaryModel.fromJson(e)).toList();

  //   return diaryList;
  // }

  Future<List<DiaryModel>> getDiarys(String email) async {
    Dio dio = Dio();

    final resp = await dio
        .get('http://127.0.0.1:3000/users/diarys', data: {"email": email});

    List<DiaryModel> diarys =
        resp.data.map<DiaryModel>((e) => DiaryModel.fromJson(e)).toList();

    return diarys;
  }

  Future writeDiary(String title, String date, String content) async {}
}
