// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MessageStateData value) $default, {
    required TResult Function(MessageStateLoading value) loading,
    required TResult Function(MessageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;
}

/// @nodoc
abstract class _$$MessageStateDataCopyWith<$Res> {
  factory _$$MessageStateDataCopyWith(
          _$MessageStateData value, $Res Function(_$MessageStateData) then) =
      __$$MessageStateDataCopyWithImpl<$Res>;
  $Res call({Map<String, UserMessageModel> messageList});
}

/// @nodoc
class __$$MessageStateDataCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$$MessageStateDataCopyWith<$Res> {
  __$$MessageStateDataCopyWithImpl(
      _$MessageStateData _value, $Res Function(_$MessageStateData) _then)
      : super(_value, (v) => _then(v as _$MessageStateData));

  @override
  _$MessageStateData get _value => super._value as _$MessageStateData;

  @override
  $Res call({
    Object? messageList = freezed,
  }) {
    return _then(_$MessageStateData(
      messageList == freezed
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as Map<String, UserMessageModel>,
    ));
  }
}

/// @nodoc

class _$MessageStateData implements MessageStateData {
  const _$MessageStateData(final Map<String, UserMessageModel> messageList)
      : _messageList = messageList;

  final Map<String, UserMessageModel> _messageList;
  @override
  Map<String, UserMessageModel> get messageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_messageList);
  }

  @override
  String toString() {
    return 'MessageState(messageList: $messageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageStateData &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageList));

  @JsonKey(ignore: true)
  @override
  _$$MessageStateDataCopyWith<_$MessageStateData> get copyWith =>
      __$$MessageStateDataCopyWithImpl<_$MessageStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(messageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(messageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
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
    TResult Function(MessageStateData value) $default, {
    required TResult Function(MessageStateLoading value) loading,
    required TResult Function(MessageStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MessageStateData implements MessageState {
  const factory MessageStateData(
      final Map<String, UserMessageModel> messageList) = _$MessageStateData;

  Map<String, UserMessageModel> get messageList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MessageStateDataCopyWith<_$MessageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageStateLoadingCopyWith<$Res> {
  factory _$$MessageStateLoadingCopyWith(_$MessageStateLoading value,
          $Res Function(_$MessageStateLoading) then) =
      __$$MessageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageStateLoadingCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$$MessageStateLoadingCopyWith<$Res> {
  __$$MessageStateLoadingCopyWithImpl(
      _$MessageStateLoading _value, $Res Function(_$MessageStateLoading) _then)
      : super(_value, (v) => _then(v as _$MessageStateLoading));

  @override
  _$MessageStateLoading get _value => super._value as _$MessageStateLoading;
}

/// @nodoc

class _$MessageStateLoading implements MessageStateLoading {
  const _$MessageStateLoading();

  @override
  String toString() {
    return 'MessageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
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
    TResult Function(MessageStateData value) $default, {
    required TResult Function(MessageStateLoading value) loading,
    required TResult Function(MessageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MessageStateLoading implements MessageState {
  const factory MessageStateLoading() = _$MessageStateLoading;
}

/// @nodoc
abstract class _$$MessageStateErrorCopyWith<$Res> {
  factory _$$MessageStateErrorCopyWith(
          _$MessageStateError value, $Res Function(_$MessageStateError) then) =
      __$$MessageStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$MessageStateErrorCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$$MessageStateErrorCopyWith<$Res> {
  __$$MessageStateErrorCopyWithImpl(
      _$MessageStateError _value, $Res Function(_$MessageStateError) _then)
      : super(_value, (v) => _then(v as _$MessageStateError));

  @override
  _$MessageStateError get _value => super._value as _$MessageStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$MessageStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$MessageStateError implements MessageStateError {
  const _$MessageStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'MessageState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$MessageStateErrorCopyWith<_$MessageStateError> get copyWith =>
      __$$MessageStateErrorCopyWithImpl<_$MessageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, UserMessageModel> messageList)? $default, {
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
    TResult Function(MessageStateData value) $default, {
    required TResult Function(MessageStateLoading value) loading,
    required TResult Function(MessageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MessageStateData value)? $default, {
    TResult Function(MessageStateLoading value)? loading,
    TResult Function(MessageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MessageStateError implements MessageState {
  const factory MessageStateError(final dynamic error) = _$MessageStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MessageStateErrorCopyWith<_$MessageStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
