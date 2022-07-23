// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$SearchStateDataCopyWith<$Res> {
  factory _$$SearchStateDataCopyWith(
          _$SearchStateData value, $Res Function(_$SearchStateData) then) =
      __$$SearchStateDataCopyWithImpl<$Res>;
  $Res call({Map<String, PlaceModel> placeMap, bool inSideLoading});
}

/// @nodoc
class __$$SearchStateDataCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchStateDataCopyWith<$Res> {
  __$$SearchStateDataCopyWithImpl(
      _$SearchStateData _value, $Res Function(_$SearchStateData) _then)
      : super(_value, (v) => _then(v as _$SearchStateData));

  @override
  _$SearchStateData get _value => super._value as _$SearchStateData;

  @override
  $Res call({
    Object? placeMap = freezed,
    Object? inSideLoading = freezed,
  }) {
    return _then(_$SearchStateData(
      placeMap == freezed
          ? _value._placeMap
          : placeMap // ignore: cast_nullable_to_non_nullable
              as Map<String, PlaceModel>,
      inSideLoading == freezed
          ? _value.inSideLoading
          : inSideLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateData implements SearchStateData {
  const _$SearchStateData(
      final Map<String, PlaceModel> placeMap, this.inSideLoading)
      : _placeMap = placeMap;

  final Map<String, PlaceModel> _placeMap;
  @override
  Map<String, PlaceModel> get placeMap {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_placeMap);
  }

  @override
  final bool inSideLoading;

  @override
  String toString() {
    return 'SearchState(placeMap: $placeMap, inSideLoading: $inSideLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateData &&
            const DeepCollectionEquality().equals(other._placeMap, _placeMap) &&
            const DeepCollectionEquality()
                .equals(other.inSideLoading, inSideLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_placeMap),
      const DeepCollectionEquality().hash(inSideLoading));

  @JsonKey(ignore: true)
  @override
  _$$SearchStateDataCopyWith<_$SearchStateData> get copyWith =>
      __$$SearchStateDataCopyWithImpl<_$SearchStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(placeMap, inSideLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(placeMap, inSideLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(placeMap, inSideLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchStateData implements SearchState {
  const factory SearchStateData(
          final Map<String, PlaceModel> placeMap, final bool inSideLoading) =
      _$SearchStateData;

  Map<String, PlaceModel> get placeMap => throw _privateConstructorUsedError;
  bool get inSideLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchStateDataCopyWith<_$SearchStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchStateLoadingCopyWith<$Res> {
  factory _$$SearchStateLoadingCopyWith(_$SearchStateLoading value,
          $Res Function(_$SearchStateLoading) then) =
      __$$SearchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchStateLoadingCopyWith<$Res> {
  __$$SearchStateLoadingCopyWithImpl(
      _$SearchStateLoading _value, $Res Function(_$SearchStateLoading) _then)
      : super(_value, (v) => _then(v as _$SearchStateLoading));

  @override
  _$SearchStateLoading get _value => super._value as _$SearchStateLoading;
}

/// @nodoc

class _$SearchStateLoading implements SearchStateLoading {
  const _$SearchStateLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
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
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchStateLoading implements SearchState {
  const factory SearchStateLoading() = _$SearchStateLoading;
}

/// @nodoc
abstract class _$$SearchStateErrorCopyWith<$Res> {
  factory _$$SearchStateErrorCopyWith(
          _$SearchStateError value, $Res Function(_$SearchStateError) then) =
      __$$SearchStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$SearchStateErrorCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchStateErrorCopyWith<$Res> {
  __$$SearchStateErrorCopyWithImpl(
      _$SearchStateError _value, $Res Function(_$SearchStateError) _then)
      : super(_value, (v) => _then(v as _$SearchStateError));

  @override
  _$SearchStateError get _value => super._value as _$SearchStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$SearchStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SearchStateError implements SearchStateError {
  const _$SearchStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SearchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$SearchStateErrorCopyWith<_$SearchStateError> get copyWith =>
      __$$SearchStateErrorCopyWithImpl<_$SearchStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, PlaceModel> placeMap, bool inSideLoading)?
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
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchStateError implements SearchState {
  const factory SearchStateError(final dynamic error) = _$SearchStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchStateErrorCopyWith<_$SearchStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
