// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiaryModelImpl _$$DiaryModelImplFromJson(Map<String, dynamic> json) =>
    _$DiaryModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$DiaryModelImplToJson(_$DiaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'content': instance.content,
    };
