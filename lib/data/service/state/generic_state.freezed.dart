// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  _Idle<T> idle<T>() {
    return _Idle<T>();
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _Error<T> error<T>(Object error, StackTrace stackTrace) {
    return _Error<T>(
      error,
      stackTrace,
    );
  }

  _HasError<T> hasError<T>(String errorText) {
    return _HasError<T>(
      errorText,
    );
  }

  _Success<T> success<T>(T? value) {
    return _Success<T>(
      value,
    );
  }
}

/// @nodoc
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function(String errorText) hasError,
    required TResult Function(T? value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_HasError<T> value) hasError,
    required TResult Function(_Success<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<T, $Res> {
  factory $TodoStateCopyWith(
          TodoState<T> value, $Res Function(TodoState<T>) then) =
      _$TodoStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<T, $Res> implements $TodoStateCopyWith<T, $Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState<T> _value;
  // ignore: unused_field
  final $Res Function(TodoState<T>) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<T, $Res> {
  factory _$IdleCopyWith(_Idle<T> value, $Res Function(_Idle<T>) then) =
      __$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<T, $Res> extends _$TodoStateCopyWithImpl<T, $Res>
    implements _$IdleCopyWith<T, $Res> {
  __$IdleCopyWithImpl(_Idle<T> _value, $Res Function(_Idle<T>) _then)
      : super(_value, (v) => _then(v as _Idle<T>));

  @override
  _Idle<T> get _value => super._value as _Idle<T>;
}

/// @nodoc

class _$_Idle<T> with DiagnosticableTreeMixin implements _Idle<T> {
  const _$_Idle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState<$T>.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodoState<$T>.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function(String errorText) hasError,
    required TResult Function(T? value) success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_HasError<T> value) hasError,
    required TResult Function(_Success<T> value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle<T> implements TodoState<T> {
  const factory _Idle() = _$_Idle<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res> extends _$TodoStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc

class _$_Loading<T> with DiagnosticableTreeMixin implements _Loading<T> {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TodoState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function(String errorText) hasError,
    required TResult Function(T? value) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_HasError<T> value) hasError,
    required TResult Function(_Success<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements TodoState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res> extends _$TodoStateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_Error<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_Error<T> with DiagnosticableTreeMixin implements _Error<T> {
  const _$_Error(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState<$T>.error'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function(String errorText) hasError,
    required TResult Function(T? value) success,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_HasError<T> value) hasError,
    required TResult Function(_Success<T> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements TodoState<T> {
  const factory _Error(Object error, StackTrace stackTrace) = _$_Error<T>;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasErrorCopyWith<T, $Res> {
  factory _$HasErrorCopyWith(
          _HasError<T> value, $Res Function(_HasError<T>) then) =
      __$HasErrorCopyWithImpl<T, $Res>;
  $Res call({String errorText});
}

/// @nodoc
class __$HasErrorCopyWithImpl<T, $Res> extends _$TodoStateCopyWithImpl<T, $Res>
    implements _$HasErrorCopyWith<T, $Res> {
  __$HasErrorCopyWithImpl(
      _HasError<T> _value, $Res Function(_HasError<T>) _then)
      : super(_value, (v) => _then(v as _HasError<T>));

  @override
  _HasError<T> get _value => super._value as _HasError<T>;

  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_HasError<T>(
      errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HasError<T> with DiagnosticableTreeMixin implements _HasError<T> {
  const _$_HasError(this.errorText);

  @override
  final String errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState<$T>.hasError(errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState<$T>.hasError'))
      ..add(DiagnosticsProperty('errorText', errorText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HasError<T> &&
            const DeepCollectionEquality().equals(other.errorText, errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorText));

  @JsonKey(ignore: true)
  @override
  _$HasErrorCopyWith<T, _HasError<T>> get copyWith =>
      __$HasErrorCopyWithImpl<T, _HasError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function(String errorText) hasError,
    required TResult Function(T? value) success,
  }) {
    return hasError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
  }) {
    return hasError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_HasError<T> value) hasError,
    required TResult Function(_Success<T> value) success,
  }) {
    return hasError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
  }) {
    return hasError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(this);
    }
    return orElse();
  }
}

abstract class _HasError<T> implements TodoState<T> {
  const factory _HasError(String errorText) = _$_HasError<T>;

  String get errorText;
  @JsonKey(ignore: true)
  _$HasErrorCopyWith<T, _HasError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({T? value});
}

/// @nodoc
class __$SuccessCopyWithImpl<T, $Res> extends _$TodoStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Success<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Success<T> with DiagnosticableTreeMixin implements _Success<T> {
  const _$_Success(this.value);

  @override
  final T? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState<$T>.success(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState<$T>.success'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function(String errorText) hasError,
    required TResult Function(T? value) success,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function(String errorText)? hasError,
    TResult Function(T? value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_HasError<T> value) hasError,
    required TResult Function(_Success<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_HasError<T> value)? hasError,
    TResult Function(_Success<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements TodoState<T> {
  const factory _Success(T? value) = _$_Success<T>;

  T? get value;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
