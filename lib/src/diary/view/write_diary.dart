// 다이러리 wirte

import 'package:flutter/material.dart';
import 'package:me/src/common/layout/default_layout.dart';

class WriteDiary extends StatelessWidget {
  const WriteDiary({super.key});

  @override
  Widget build(BuildContext context) {
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
                    onChanged: (val) {},
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
              onChanged: (val) {},
            ),
          ),
        ],
      ),
    );
  }
}
