part of 'diary_bloc.dart';

@freezed
class DiaryEvent with _$DiaryEvent {
  const factory DiaryEvent.fetchDiarys() = FetchDiarys;
}
