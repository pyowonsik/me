import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:me/src/diary/model/diary.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:me/src/diary/repository/diary_repository.dart';

part 'diary_bloc.freezed.dart';
part 'diary_event.dart';
part 'diary_state.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  final DiaryRepository diaryRepository;
  DiaryBloc({required this.diaryRepository}) : super(DiaryState(diarys: [])) {
    on<FetchDiarys>((event, emit) async {
      // List<DiaryModel> diarys = await diaryRepository.loadDiaryJsonData();

      List<DiaryModel> diarys =
          await diaryRepository.getDiarys("pws3385@test.com");

      return emit(state.copyWith(diarys: diarys));
    });

    on<WriteDiaryEvent>((event, emit) async {
      // DiaryModel newDiary = DiaryModel(id: '', name: '', date: '', content: '');
    });

    add(const FetchDiarys());
  }
}
