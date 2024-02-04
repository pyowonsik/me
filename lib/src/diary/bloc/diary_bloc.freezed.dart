// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDiarys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDiarys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDiarys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDiarys value) fetchDiarys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDiarys value)? fetchDiarys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDiarys value)? fetchDiarys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryEventCopyWith<$Res> {
  factory $DiaryEventCopyWith(
          DiaryEvent value, $Res Function(DiaryEvent) then) =
      _$DiaryEventCopyWithImpl<$Res, DiaryEvent>;
}

/// @nodoc
class _$DiaryEventCopyWithImpl<$Res, $Val extends DiaryEvent>
    implements $DiaryEventCopyWith<$Res> {
  _$DiaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDiarysImplCopyWith<$Res> {
  factory _$$FetchDiarysImplCopyWith(
          _$FetchDiarysImpl value, $Res Function(_$FetchDiarysImpl) then) =
      __$$FetchDiarysImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDiarysImplCopyWithImpl<$Res>
    extends _$DiaryEventCopyWithImpl<$Res, _$FetchDiarysImpl>
    implements _$$FetchDiarysImplCopyWith<$Res> {
  __$$FetchDiarysImplCopyWithImpl(
      _$FetchDiarysImpl _value, $Res Function(_$FetchDiarysImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDiarysImpl implements FetchDiarys {
  const _$FetchDiarysImpl();

  @override
  String toString() {
    return 'DiaryEvent.fetchDiarys()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDiarysImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDiarys,
  }) {
    return fetchDiarys();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDiarys,
  }) {
    return fetchDiarys?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDiarys,
    required TResult orElse(),
  }) {
    if (fetchDiarys != null) {
      return fetchDiarys();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDiarys value) fetchDiarys,
  }) {
    return fetchDiarys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDiarys value)? fetchDiarys,
  }) {
    return fetchDiarys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDiarys value)? fetchDiarys,
    required TResult orElse(),
  }) {
    if (fetchDiarys != null) {
      return fetchDiarys(this);
    }
    return orElse();
  }
}

abstract class FetchDiarys implements DiaryEvent {
  const factory FetchDiarys() = _$FetchDiarysImpl;
}

/// @nodoc
mixin _$DiaryState {
  List<DiaryModel>? get diarys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryStateCopyWith<DiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryStateCopyWith<$Res> {
  factory $DiaryStateCopyWith(
          DiaryState value, $Res Function(DiaryState) then) =
      _$DiaryStateCopyWithImpl<$Res, DiaryState>;
  @useResult
  $Res call({List<DiaryModel>? diarys});
}

/// @nodoc
class _$DiaryStateCopyWithImpl<$Res, $Val extends DiaryState>
    implements $DiaryStateCopyWith<$Res> {
  _$DiaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diarys = freezed,
  }) {
    return _then(_value.copyWith(
      diarys: freezed == diarys
          ? _value.diarys
          : diarys // ignore: cast_nullable_to_non_nullable
              as List<DiaryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryStateImplCopyWith<$Res>
    implements $DiaryStateCopyWith<$Res> {
  factory _$$DiaryStateImplCopyWith(
          _$DiaryStateImpl value, $Res Function(_$DiaryStateImpl) then) =
      __$$DiaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DiaryModel>? diarys});
}

/// @nodoc
class __$$DiaryStateImplCopyWithImpl<$Res>
    extends _$DiaryStateCopyWithImpl<$Res, _$DiaryStateImpl>
    implements _$$DiaryStateImplCopyWith<$Res> {
  __$$DiaryStateImplCopyWithImpl(
      _$DiaryStateImpl _value, $Res Function(_$DiaryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diarys = freezed,
  }) {
    return _then(_$DiaryStateImpl(
      diarys: freezed == diarys
          ? _value._diarys
          : diarys // ignore: cast_nullable_to_non_nullable
              as List<DiaryModel>?,
    ));
  }
}

/// @nodoc

class _$DiaryStateImpl implements _DiaryState {
  _$DiaryStateImpl({required final List<DiaryModel>? diarys})
      : _diarys = diarys;

  final List<DiaryModel>? _diarys;
  @override
  List<DiaryModel>? get diarys {
    final value = _diarys;
    if (value == null) return null;
    if (_diarys is EqualUnmodifiableListView) return _diarys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiaryState(diarys: $diarys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryStateImpl &&
            const DeepCollectionEquality().equals(other._diarys, _diarys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_diarys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryStateImplCopyWith<_$DiaryStateImpl> get copyWith =>
      __$$DiaryStateImplCopyWithImpl<_$DiaryStateImpl>(this, _$identity);
}

abstract class _DiaryState implements DiaryState {
  factory _DiaryState({required final List<DiaryModel>? diarys}) =
      _$DiaryStateImpl;

  @override
  List<DiaryModel>? get diarys;
  @override
  @JsonKey(ignore: true)
  _$$DiaryStateImplCopyWith<_$DiaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
