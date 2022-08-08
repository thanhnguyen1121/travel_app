// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MessageDetailStateData value) $default, {
    required TResult Function(MessageDetailStateLoading value) loading,
    required TResult Function(MessageDetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailStateCopyWith<$Res> {
  factory $MessageDetailStateCopyWith(
          MessageDetailState value, $Res Function(MessageDetailState) then) =
      _$MessageDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageDetailStateCopyWithImpl<$Res>
    implements $MessageDetailStateCopyWith<$Res> {
  _$MessageDetailStateCopyWithImpl(this._value, this._then);

  final MessageDetailState _value;
  // ignore: unused_field
  final $Res Function(MessageDetailState) _then;
}

/// @nodoc
abstract class _$$MessageDetailStateDataCopyWith<$Res> {
  factory _$$MessageDetailStateDataCopyWith(_$MessageDetailStateData value,
          $Res Function(_$MessageDetailStateData) then) =
      __$$MessageDetailStateDataCopyWithImpl<$Res>;
  $Res call({Map<String, List<MessageModel>> messageList});
}

/// @nodoc
class __$$MessageDetailStateDataCopyWithImpl<$Res>
    extends _$MessageDetailStateCopyWithImpl<$Res>
    implements _$$MessageDetailStateDataCopyWith<$Res> {
  __$$MessageDetailStateDataCopyWithImpl(_$MessageDetailStateData _value,
      $Res Function(_$MessageDetailStateData) _then)
      : super(_value, (v) => _then(v as _$MessageDetailStateData));

  @override
  _$MessageDetailStateData get _value =>
      super._value as _$MessageDetailStateData;

  @override
  $Res call({
    Object? messageList = freezed,
  }) {
    return _then(_$MessageDetailStateData(
      messageList == freezed
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<MessageModel>>,
    ));
  }
}

/// @nodoc

class _$MessageDetailStateData implements MessageDetailStateData {
  const _$MessageDetailStateData(
      final Map<String, List<MessageModel>> messageList)
      : _messageList = messageList;

  final Map<String, List<MessageModel>> _messageList;
  @override
  Map<String, List<MessageModel>> get messageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_messageList);
  }

  @override
  String toString() {
    return 'MessageDetailState(messageList: $messageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDetailStateData &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageList));

  @JsonKey(ignore: true)
  @override
  _$$MessageDetailStateDataCopyWith<_$MessageDetailStateData> get copyWith =>
      __$$MessageDetailStateDataCopyWithImpl<_$MessageDetailStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(messageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(messageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(messageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MessageDetailStateData value) $default, {
    required TResult Function(MessageDetailStateLoading value) loading,
    required TResult Function(MessageDetailStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MessageDetailStateData implements MessageDetailState {
  const factory MessageDetailStateData(
          final Map<String, List<MessageModel>> messageList) =
      _$MessageDetailStateData;

  Map<String, List<MessageModel>> get messageList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MessageDetailStateDataCopyWith<_$MessageDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageDetailStateLoadingCopyWith<$Res> {
  factory _$$MessageDetailStateLoadingCopyWith(
          _$MessageDetailStateLoading value,
          $Res Function(_$MessageDetailStateLoading) then) =
      __$$MessageDetailStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageDetailStateLoadingCopyWithImpl<$Res>
    extends _$MessageDetailStateCopyWithImpl<$Res>
    implements _$$MessageDetailStateLoadingCopyWith<$Res> {
  __$$MessageDetailStateLoadingCopyWithImpl(_$MessageDetailStateLoading _value,
      $Res Function(_$MessageDetailStateLoading) _then)
      : super(_value, (v) => _then(v as _$MessageDetailStateLoading));

  @override
  _$MessageDetailStateLoading get _value =>
      super._value as _$MessageDetailStateLoading;
}

/// @nodoc

class _$MessageDetailStateLoading implements MessageDetailStateLoading {
  const _$MessageDetailStateLoading();

  @override
  String toString() {
    return 'MessageDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MessageDetailStateData value) $default, {
    required TResult Function(MessageDetailStateLoading value) loading,
    required TResult Function(MessageDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MessageDetailStateLoading implements MessageDetailState {
  const factory MessageDetailStateLoading() = _$MessageDetailStateLoading;
}

/// @nodoc
abstract class _$$MessageDetailStateErrorCopyWith<$Res> {
  factory _$$MessageDetailStateErrorCopyWith(_$MessageDetailStateError value,
          $Res Function(_$MessageDetailStateError) then) =
      __$$MessageDetailStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$MessageDetailStateErrorCopyWithImpl<$Res>
    extends _$MessageDetailStateCopyWithImpl<$Res>
    implements _$$MessageDetailStateErrorCopyWith<$Res> {
  __$$MessageDetailStateErrorCopyWithImpl(_$MessageDetailStateError _value,
      $Res Function(_$MessageDetailStateError) _then)
      : super(_value, (v) => _then(v as _$MessageDetailStateError));

  @override
  _$MessageDetailStateError get _value =>
      super._value as _$MessageDetailStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$MessageDetailStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$MessageDetailStateError implements MessageDetailStateError {
  const _$MessageDetailStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'MessageDetailState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDetailStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$MessageDetailStateErrorCopyWith<_$MessageDetailStateError> get copyWith =>
      __$$MessageDetailStateErrorCopyWithImpl<_$MessageDetailStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, List<MessageModel>> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MessageDetailStateData value) $default, {
    required TResult Function(MessageDetailStateLoading value) loading,
    required TResult Function(MessageDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageDetailStateData value)? $default, {
    TResult Function(MessageDetailStateLoading value)? loading,
    TResult Function(MessageDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MessageDetailStateError implements MessageDetailState {
  const factory MessageDetailStateError(final dynamic error) =
      _$MessageDetailStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MessageDetailStateErrorCopyWith<_$MessageDetailStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
