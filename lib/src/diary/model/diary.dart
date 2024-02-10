import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary.freezed.dart';
part 'diary.g.dart';

@freezed
class DiaryModel with _$DiaryModel {
  factory DiaryModel({
    required int id,
    required String title,
    required String date,
    required String content,
  }) = _DiaryModel;

  factory DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryModelFromJson(json);
}
