part of 'diary_bloc.dart';

@freezed
class DiaryEvent with _$DiaryEvent {
  const factory DiaryEvent.fetchDiarys() = FetchDiarys;
  const factory DiaryEvent.writeDiaryEvent({
    required String title,
    required String date,
    required String content,
  }) = WriteDiaryEvent;
  // const factory DiaryEvent.findById() = Fi
}
