// 다이어리 리스트
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:me/src/common/layout/default_layout.dart';
import 'package:me/src/diary/bloc/diary_bloc.dart';

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    final diaryBloc = context.read<DiaryBloc>();

    print(diaryBloc.state.diarys);

    return SafeArea(
      child: DefaultLayout(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
