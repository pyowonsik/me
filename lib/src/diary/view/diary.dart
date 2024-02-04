// 다이어리 리스트
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:me/src/common/layout/default_layout.dart';
import 'package:me/src/diary/bloc/diary_bloc.dart';
import 'package:me/src/diary/model/diary.dart';

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    final diaryBloc = context.read<DiaryBloc>();

    return DefaultLayout(
      body: BlocBuilder(
        bloc: diaryBloc,
        builder: (BuildContext context, DiaryState state) {
          return ListView.builder(
            itemCount: state.diarys?.length,
            itemBuilder: (context, index) {
              DiaryModel e = diaryBloc.state.diarys!.toList()[index];
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.name,
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        e.date,
                        style: const TextStyle(fontSize: 12.0),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          context.go('/write_diary');
        },
      ),
    );
  }
}
