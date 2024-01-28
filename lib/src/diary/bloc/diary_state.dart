part of 'diary_bloc.dart';

@freezed
class DiaryState with _$DiaryState {
  factory DiaryState({
    List<DiaryModel>? diarys,
  }) = _DiaryState;
}
