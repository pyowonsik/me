// 다이어리 리스트
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:me/src/common/layout/default_layout.dart';

import 'dart:convert';
import 'dart:io';

import 'package:me/src/diary/model/diary.dart';

class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  late Future<List<DiaryModel>> diarys;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    diarys = loadDiaryJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      title: 'Diary',
      body: Column(
        children: [],
      ),
    );
  }
}

Future<List<DiaryModel>> loadDiaryJsonData() async {
  var data = await rootBundle.loadString(
      '/Users/pyowonsik/workspace/me/lib/src/diary/mock/diary_mock_data.json');
  return (json.decode(data).map((e) => DiaryModel.fromJson(e)).toList());
}
