// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiaryModel _$DiaryModelFromJson(Map<String, dynamic> json) {
  return _DiaryModel.fromJson(json);
}

/// @nodoc
mixin _$DiaryModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryModelCopyWith<DiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryModelCopyWith<$Res> {
  factory $DiaryModelCopyWith(
          DiaryModel value, $Res Function(DiaryModel) then) =
      _$DiaryModelCopyWithImpl<$Res, DiaryModel>;
  @useResult
  $Res call({String id, String title, String date, String content});
}

/// @nodoc
class _$DiaryModelCopyWithImpl<$Res, $Val extends DiaryModel>
    implements $DiaryModelCopyWith<$Res> {
  _$DiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryModelImplCopyWith<$Res>
    implements $DiaryModelCopyWith<$Res> {
  factory _$$DiaryModelImplCopyWith(
          _$DiaryModelImpl value, $Res Function(_$DiaryModelImpl) then) =
      __$$DiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String date, String content});
}

/// @nodoc
class __$$DiaryModelImplCopyWithImpl<$Res>
    extends _$DiaryModelCopyWithImpl<$Res, _$DiaryModelImpl>
    implements _$$DiaryModelImplCopyWith<$Res> {
  __$$DiaryModelImplCopyWithImpl(
      _$DiaryModelImpl _value, $Res Function(_$DiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? content = null,
  }) {
    return _then(_$DiaryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryModelImpl implements _DiaryModel {
  _$DiaryModelImpl(
      {required this.id,
      required this.title,
      required this.date,
      required this.content});

  factory _$DiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String date;
  @override
  final String content;

  @override
  String toString() {
    return 'DiaryModel(id: $id, title: $title, date: $date, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryModelImplCopyWith<_$DiaryModelImpl> get copyWith =>
      __$$DiaryModelImplCopyWithImpl<_$DiaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryModelImplToJson(
      this,
    );
  }
}

abstract class _DiaryModel implements DiaryModel {
  factory _DiaryModel(
      {required final String id,
      required final String title,
      required final String date,
      required final String content}) = _$DiaryModelImpl;

  factory _DiaryModel.fromJson(Map<String, dynamic> json) =
      _$DiaryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get date;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$DiaryModelImplCopyWith<_$DiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
