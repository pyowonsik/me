import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:me/src/diary/model/diary.dart';

class DiaryRepository {
  Future<List<DiaryModel>> loadDiaryJsonData() async {
    var data = await rootBundle.loadString(
        '/Users/pyowonsik/workspace/me/lib/src/diary/mock/diary_mock_data.json');
    List<dynamic> decodedData = json.decode(data);

    // List<dynamic>을 List<DiaryModel>로 변환
    List<DiaryModel> diaryList =
        decodedData.map((e) => DiaryModel.fromJson(e)).toList();

    return diaryList;
  }
}
