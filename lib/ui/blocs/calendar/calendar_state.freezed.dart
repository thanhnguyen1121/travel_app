// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CalendarStateData value) $default, {
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;
}

/// @nodoc
abstract class _$$CalendarStateDataCopyWith<$Res> {
  factory _$$CalendarStateDataCopyWith(
          _$CalendarStateData value, $Res Function(_$CalendarStateData) then) =
      __$$CalendarStateDataCopyWithImpl<$Res>;
  $Res call({Map<String, PlaceModel> placeList, bool insideLoading});
}

/// @nodoc
class __$$CalendarStateDataCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$CalendarStateDataCopyWith<$Res> {
  __$$CalendarStateDataCopyWithImpl(
      _$CalendarStateData _value, $Res Function(_$CalendarStateData) _then)
      : super(_value, (v) => _then(v as _$CalendarStateData));

  @override
  _$CalendarStateData get _value => super._value as _$CalendarStateData;

  @override
  $Res call({
    Object? placeList = freezed,
    Object? insideLoading = freezed,
  }) {
    return _then(_$CalendarStateData(
      placeList == freezed
          ? _value._placeList
          : placeList // ignore: cast_nullable_to_non_nullable
              as Map<String, PlaceModel>,
      insideLoading == freezed
          ? _value.insideLoading
          : insideLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CalendarStateData implements CalendarStateData {
  const _$CalendarStateData(
      final Map<String, PlaceModel> placeList, this.insideLoading)
      : _placeList = placeList;

  final Map<String, PlaceModel> _placeList;
  @override
  Map<String, PlaceModel> get placeList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_placeList);
  }

  @override
  final bool insideLoading;

  @override
  String toString() {
    return 'CalendarState(placeList: $placeList, insideLoading: $insideLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateData &&
            const DeepCollectionEquality()
                .equals(other._placeList, _placeList) &&
            const DeepCollectionEquality()
                .equals(other.insideLoading, insideLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_placeList),
      const DeepCollectionEquality().hash(insideLoading));

  @JsonKey(ignore: true)
  @override
  _$$CalendarStateDataCopyWith<_$CalendarStateData> get copyWith =>
      __$$CalendarStateDataCopyWithImpl<_$CalendarStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(placeList, insideLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(placeList, insideLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(placeList, insideLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CalendarStateData value) $default, {
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CalendarStateData implements CalendarState {
  const factory CalendarStateData(
          final Map<String, PlaceModel> placeList, final bool insideLoading) =
      _$CalendarStateData;

  Map<String, PlaceModel> get placeList => throw _privateConstructorUsedError;
  bool get insideLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CalendarStateDataCopyWith<_$CalendarStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarStateLoadingCopyWith<$Res> {
  factory _$$CalendarStateLoadingCopyWith(_$CalendarStateLoading value,
          $Res Function(_$CalendarStateLoading) then) =
      __$$CalendarStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarStateLoadingCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$CalendarStateLoadingCopyWith<$Res> {
  __$$CalendarStateLoadingCopyWithImpl(_$CalendarStateLoading _value,
      $Res Function(_$CalendarStateLoading) _then)
      : super(_value, (v) => _then(v as _$CalendarStateLoading));

  @override
  _$CalendarStateLoading get _value => super._value as _$CalendarStateLoading;
}

/// @nodoc

class _$CalendarStateLoading implements CalendarStateLoading {
  const _$CalendarStateLoading();

  @override
  String toString() {
    return 'CalendarState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalendarStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
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
    TResult Function(CalendarStateData value) $default, {
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CalendarStateLoading implements CalendarState {
  const factory CalendarStateLoading() = _$CalendarStateLoading;
}

/// @nodoc
abstract class _$$CalendarStateErrorCopyWith<$Res> {
  factory _$$CalendarStateErrorCopyWith(_$CalendarStateError value,
          $Res Function(_$CalendarStateError) then) =
      __$$CalendarStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$CalendarStateErrorCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$CalendarStateErrorCopyWith<$Res> {
  __$$CalendarStateErrorCopyWithImpl(
      _$CalendarStateError _value, $Res Function(_$CalendarStateError) _then)
      : super(_value, (v) => _then(v as _$CalendarStateError));

  @override
  _$CalendarStateError get _value => super._value as _$CalendarStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CalendarStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CalendarStateError implements CalendarStateError {
  const _$CalendarStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'CalendarState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$CalendarStateErrorCopyWith<_$CalendarStateError> get copyWith =>
      __$$CalendarStateErrorCopyWithImpl<_$CalendarStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeList, bool insideLoading)?
        $default, {
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
    TResult Function(CalendarStateData value) $default, {
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CalendarStateData value)? $default, {
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CalendarStateError implements CalendarState {
  const factory CalendarStateError(final dynamic error) = _$CalendarStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CalendarStateErrorCopyWith<_$CalendarStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
