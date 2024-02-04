// 다이러리 wirte

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:me/src/common/layout/default_layout.dart';
import 'package:me/src/diary/bloc/diary_bloc.dart';

class WriteDiary extends StatelessWidget {
  const WriteDiary({super.key});

  @override
  Widget build(BuildContext context) {
    final diaryBloc = context.read<DiaryBloc>();
    String title = '';
    String content = '';
    return DefaultLayout(
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple.shade100,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: '제목을 입력하세요.', // 힌트 텍스트
                      border: InputBorder.none, // 밑줄 없애기
                    ),
                    onChanged: (val) {
                      title = val;
                    },
                  ),
                  Row(
                    children: [
                      Text("날짜 : ${DateTime.now()} "),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: '내용을 입력하세요.', // 힌트 텍스트
                border: InputBorder.none, // 밑줄 없애기
              ),
              onChanged: (val) {
                content = val;
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.save),
          onPressed: () {
            diaryBloc.add(WriteDiaryEvent(
                title: title, date: '${DateTime.now()}', content: content));
          }),
    );
  }
}
