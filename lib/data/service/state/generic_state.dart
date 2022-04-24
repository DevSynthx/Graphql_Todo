import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_state.freezed.dart';

@freezed
abstract class TodoState<T> with _$TodoState<T> {
  const factory TodoState.idle() = _Idle<T>;
  const factory TodoState.loading() = _Loading<T>;
  const factory TodoState.error(Object error, StackTrace stackTrace) =
      _Error<T>;
  const factory TodoState.hasError(String errorText) = _HasError<T>;
  const factory TodoState.success(T? value) = _Success<T>;
}
