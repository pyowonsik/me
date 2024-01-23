import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary.freezed.dart';
part 'diary.g.dart';

@freezed
class Diary with _$Diary {
  factory Diary({
    required String name,
    required String date,
    required String content,
  }) = _Diary;

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}
