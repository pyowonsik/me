// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiaryModelImpl _$$DiaryModelImplFromJson(Map<String, dynamic> json) =>
    _$DiaryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      date: json['date'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$DiaryModelImplToJson(_$DiaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'content': instance.content,
    };
