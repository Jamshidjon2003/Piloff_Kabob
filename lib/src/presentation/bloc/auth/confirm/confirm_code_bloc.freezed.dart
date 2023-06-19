// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmCodeEvent {
  String get code => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String phone) confirmCode,
    required TResult Function(String code, String phone) confirmCodeRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String phone)? confirmCode,
    TResult? Function(String code, String phone)? confirmCodeRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String phone)? confirmCode,
    TResult Function(String code, String phone)? confirmCodeRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmCodeButtonPressedEvent value) confirmCode,
    required TResult Function(ConfirmCodeRegisterButtonPressedEvent value)
        confirmCodeRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmCodeButtonPressedEvent value)? confirmCode,
    TResult? Function(ConfirmCodeRegisterButtonPressedEvent value)?
        confirmCodeRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmCodeButtonPressedEvent value)? confirmCode,
    TResult Function(ConfirmCodeRegisterButtonPressedEvent value)?
        confirmCodeRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmCodeEventCopyWith<ConfirmCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeEventCopyWith<$Res> {
  factory $ConfirmCodeEventCopyWith(
          ConfirmCodeEvent value, $Res Function(ConfirmCodeEvent) then) =
      _$ConfirmCodeEventCopyWithImpl<$Res, ConfirmCodeEvent>;
  @useResult
  $Res call({String code, String phone});
}

/// @nodoc
class _$ConfirmCodeEventCopyWithImpl<$Res, $Val extends ConfirmCodeEvent>
    implements $ConfirmCodeEventCopyWith<$Res> {
  _$ConfirmCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmCodeButtonPressedEventCopyWith<$Res>
    implements $ConfirmCodeEventCopyWith<$Res> {
  factory _$$ConfirmCodeButtonPressedEventCopyWith(
          _$ConfirmCodeButtonPressedEvent value,
          $Res Function(_$ConfirmCodeButtonPressedEvent) then) =
      __$$ConfirmCodeButtonPressedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String phone});
}

/// @nodoc
class __$$ConfirmCodeButtonPressedEventCopyWithImpl<$Res>
    extends _$ConfirmCodeEventCopyWithImpl<$Res,
        _$ConfirmCodeButtonPressedEvent>
    implements _$$ConfirmCodeButtonPressedEventCopyWith<$Res> {
  __$$ConfirmCodeButtonPressedEventCopyWithImpl(
      _$ConfirmCodeButtonPressedEvent _value,
      $Res Function(_$ConfirmCodeButtonPressedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_$ConfirmCodeButtonPressedEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmCodeButtonPressedEvent implements ConfirmCodeButtonPressedEvent {
  const _$ConfirmCodeButtonPressedEvent(
      {required this.code, required this.phone});

  @override
  final String code;
  @override
  final String phone;

  @override
  String toString() {
    return 'ConfirmCodeEvent.confirmCode(code: $code, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeButtonPressedEvent &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCodeButtonPressedEventCopyWith<_$ConfirmCodeButtonPressedEvent>
      get copyWith => __$$ConfirmCodeButtonPressedEventCopyWithImpl<
          _$ConfirmCodeButtonPressedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String phone) confirmCode,
    required TResult Function(String code, String phone) confirmCodeRegister,
  }) {
    return confirmCode(code, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String phone)? confirmCode,
    TResult? Function(String code, String phone)? confirmCodeRegister,
  }) {
    return confirmCode?.call(code, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String phone)? confirmCode,
    TResult Function(String code, String phone)? confirmCodeRegister,
    required TResult orElse(),
  }) {
    if (confirmCode != null) {
      return confirmCode(code, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmCodeButtonPressedEvent value) confirmCode,
    required TResult Function(ConfirmCodeRegisterButtonPressedEvent value)
        confirmCodeRegister,
  }) {
    return confirmCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmCodeButtonPressedEvent value)? confirmCode,
    TResult? Function(ConfirmCodeRegisterButtonPressedEvent value)?
        confirmCodeRegister,
  }) {
    return confirmCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmCodeButtonPressedEvent value)? confirmCode,
    TResult Function(ConfirmCodeRegisterButtonPressedEvent value)?
        confirmCodeRegister,
    required TResult orElse(),
  }) {
    if (confirmCode != null) {
      return confirmCode(this);
    }
    return orElse();
  }
}

abstract class ConfirmCodeButtonPressedEvent implements ConfirmCodeEvent {
  const factory ConfirmCodeButtonPressedEvent(
      {required final String code,
      required final String phone}) = _$ConfirmCodeButtonPressedEvent;

  @override
  String get code;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmCodeButtonPressedEventCopyWith<_$ConfirmCodeButtonPressedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmCodeRegisterButtonPressedEventCopyWith<$Res>
    implements $ConfirmCodeEventCopyWith<$Res> {
  factory _$$ConfirmCodeRegisterButtonPressedEventCopyWith(
          _$ConfirmCodeRegisterButtonPressedEvent value,
          $Res Function(_$ConfirmCodeRegisterButtonPressedEvent) then) =
      __$$ConfirmCodeRegisterButtonPressedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String phone});
}

/// @nodoc
class __$$ConfirmCodeRegisterButtonPressedEventCopyWithImpl<$Res>
    extends _$ConfirmCodeEventCopyWithImpl<$Res,
        _$ConfirmCodeRegisterButtonPressedEvent>
    implements _$$ConfirmCodeRegisterButtonPressedEventCopyWith<$Res> {
  __$$ConfirmCodeRegisterButtonPressedEventCopyWithImpl(
      _$ConfirmCodeRegisterButtonPressedEvent _value,
      $Res Function(_$ConfirmCodeRegisterButtonPressedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_$ConfirmCodeRegisterButtonPressedEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmCodeRegisterButtonPressedEvent
    implements ConfirmCodeRegisterButtonPressedEvent {
  const _$ConfirmCodeRegisterButtonPressedEvent(
      {required this.code, required this.phone});

  @override
  final String code;
  @override
  final String phone;

  @override
  String toString() {
    return 'ConfirmCodeEvent.confirmCodeRegister(code: $code, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeRegisterButtonPressedEvent &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCodeRegisterButtonPressedEventCopyWith<
          _$ConfirmCodeRegisterButtonPressedEvent>
      get copyWith => __$$ConfirmCodeRegisterButtonPressedEventCopyWithImpl<
          _$ConfirmCodeRegisterButtonPressedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String phone) confirmCode,
    required TResult Function(String code, String phone) confirmCodeRegister,
  }) {
    return confirmCodeRegister(code, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String phone)? confirmCode,
    TResult? Function(String code, String phone)? confirmCodeRegister,
  }) {
    return confirmCodeRegister?.call(code, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String phone)? confirmCode,
    TResult Function(String code, String phone)? confirmCodeRegister,
    required TResult orElse(),
  }) {
    if (confirmCodeRegister != null) {
      return confirmCodeRegister(code, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmCodeButtonPressedEvent value) confirmCode,
    required TResult Function(ConfirmCodeRegisterButtonPressedEvent value)
        confirmCodeRegister,
  }) {
    return confirmCodeRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmCodeButtonPressedEvent value)? confirmCode,
    TResult? Function(ConfirmCodeRegisterButtonPressedEvent value)?
        confirmCodeRegister,
  }) {
    return confirmCodeRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmCodeButtonPressedEvent value)? confirmCode,
    TResult Function(ConfirmCodeRegisterButtonPressedEvent value)?
        confirmCodeRegister,
    required TResult orElse(),
  }) {
    if (confirmCodeRegister != null) {
      return confirmCodeRegister(this);
    }
    return orElse();
  }
}

abstract class ConfirmCodeRegisterButtonPressedEvent
    implements ConfirmCodeEvent {
  const factory ConfirmCodeRegisterButtonPressedEvent(
      {required final String code,
      required final String phone}) = _$ConfirmCodeRegisterButtonPressedEvent;

  @override
  String get code;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmCodeRegisterButtonPressedEventCopyWith<
          _$ConfirmCodeRegisterButtonPressedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value) $default, {
    required TResult Function(ConfirmCodeSuccessState value) success,
    required TResult Function(ConfirmCodeLaodingState value) loading,
    required TResult Function(ConfirmCodeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ConfirmCodeState value)? $default, {
    TResult? Function(ConfirmCodeSuccessState value)? success,
    TResult? Function(ConfirmCodeLaodingState value)? loading,
    TResult? Function(ConfirmCodeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value)? $default, {
    TResult Function(ConfirmCodeSuccessState value)? success,
    TResult Function(ConfirmCodeLaodingState value)? loading,
    TResult Function(ConfirmCodeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeStateCopyWith<$Res> {
  factory $ConfirmCodeStateCopyWith(
          ConfirmCodeState value, $Res Function(ConfirmCodeState) then) =
      _$ConfirmCodeStateCopyWithImpl<$Res, ConfirmCodeState>;
}

/// @nodoc
class _$ConfirmCodeStateCopyWithImpl<$Res, $Val extends ConfirmCodeState>
    implements $ConfirmCodeStateCopyWith<$Res> {
  _$ConfirmCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ConfirmCodeStateCopyWith<$Res> {
  factory _$$_ConfirmCodeStateCopyWith(
          _$_ConfirmCodeState value, $Res Function(_$_ConfirmCodeState) then) =
      __$$_ConfirmCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConfirmCodeStateCopyWithImpl<$Res>
    extends _$ConfirmCodeStateCopyWithImpl<$Res, _$_ConfirmCodeState>
    implements _$$_ConfirmCodeStateCopyWith<$Res> {
  __$$_ConfirmCodeStateCopyWithImpl(
      _$_ConfirmCodeState _value, $Res Function(_$_ConfirmCodeState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConfirmCodeState implements _ConfirmCodeState {
  const _$_ConfirmCodeState();

  @override
  String toString() {
    return 'ConfirmCodeState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConfirmCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value) $default, {
    required TResult Function(ConfirmCodeSuccessState value) success,
    required TResult Function(ConfirmCodeLaodingState value) loading,
    required TResult Function(ConfirmCodeErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ConfirmCodeState value)? $default, {
    TResult? Function(ConfirmCodeSuccessState value)? success,
    TResult? Function(ConfirmCodeLaodingState value)? loading,
    TResult? Function(ConfirmCodeErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value)? $default, {
    TResult Function(ConfirmCodeSuccessState value)? success,
    TResult Function(ConfirmCodeLaodingState value)? loading,
    TResult Function(ConfirmCodeErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ConfirmCodeState implements ConfirmCodeState {
  const factory _ConfirmCodeState() = _$_ConfirmCodeState;
}

/// @nodoc
abstract class _$$ConfirmCodeSuccessStateCopyWith<$Res> {
  factory _$$ConfirmCodeSuccessStateCopyWith(_$ConfirmCodeSuccessState value,
          $Res Function(_$ConfirmCodeSuccessState) then) =
      __$$ConfirmCodeSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmCodeSuccessStateCopyWithImpl<$Res>
    extends _$ConfirmCodeStateCopyWithImpl<$Res, _$ConfirmCodeSuccessState>
    implements _$$ConfirmCodeSuccessStateCopyWith<$Res> {
  __$$ConfirmCodeSuccessStateCopyWithImpl(_$ConfirmCodeSuccessState _value,
      $Res Function(_$ConfirmCodeSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmCodeSuccessState implements ConfirmCodeSuccessState {
  const _$ConfirmCodeSuccessState();

  @override
  String toString() {
    return 'ConfirmCodeState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value) $default, {
    required TResult Function(ConfirmCodeSuccessState value) success,
    required TResult Function(ConfirmCodeLaodingState value) loading,
    required TResult Function(ConfirmCodeErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ConfirmCodeState value)? $default, {
    TResult? Function(ConfirmCodeSuccessState value)? success,
    TResult? Function(ConfirmCodeLaodingState value)? loading,
    TResult? Function(ConfirmCodeErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value)? $default, {
    TResult Function(ConfirmCodeSuccessState value)? success,
    TResult Function(ConfirmCodeLaodingState value)? loading,
    TResult Function(ConfirmCodeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ConfirmCodeSuccessState implements ConfirmCodeState {
  const factory ConfirmCodeSuccessState() = _$ConfirmCodeSuccessState;
}

/// @nodoc
abstract class _$$ConfirmCodeLaodingStateCopyWith<$Res> {
  factory _$$ConfirmCodeLaodingStateCopyWith(_$ConfirmCodeLaodingState value,
          $Res Function(_$ConfirmCodeLaodingState) then) =
      __$$ConfirmCodeLaodingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmCodeLaodingStateCopyWithImpl<$Res>
    extends _$ConfirmCodeStateCopyWithImpl<$Res, _$ConfirmCodeLaodingState>
    implements _$$ConfirmCodeLaodingStateCopyWith<$Res> {
  __$$ConfirmCodeLaodingStateCopyWithImpl(_$ConfirmCodeLaodingState _value,
      $Res Function(_$ConfirmCodeLaodingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmCodeLaodingState implements ConfirmCodeLaodingState {
  const _$ConfirmCodeLaodingState();

  @override
  String toString() {
    return 'ConfirmCodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeLaodingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? error,
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
    TResult Function(_ConfirmCodeState value) $default, {
    required TResult Function(ConfirmCodeSuccessState value) success,
    required TResult Function(ConfirmCodeLaodingState value) loading,
    required TResult Function(ConfirmCodeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ConfirmCodeState value)? $default, {
    TResult? Function(ConfirmCodeSuccessState value)? success,
    TResult? Function(ConfirmCodeLaodingState value)? loading,
    TResult? Function(ConfirmCodeErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value)? $default, {
    TResult Function(ConfirmCodeSuccessState value)? success,
    TResult Function(ConfirmCodeLaodingState value)? loading,
    TResult Function(ConfirmCodeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConfirmCodeLaodingState implements ConfirmCodeState {
  const factory ConfirmCodeLaodingState() = _$ConfirmCodeLaodingState;
}

/// @nodoc
abstract class _$$ConfirmCodeErrorStateCopyWith<$Res> {
  factory _$$ConfirmCodeErrorStateCopyWith(_$ConfirmCodeErrorState value,
          $Res Function(_$ConfirmCodeErrorState) then) =
      __$$ConfirmCodeErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmCodeErrorStateCopyWithImpl<$Res>
    extends _$ConfirmCodeStateCopyWithImpl<$Res, _$ConfirmCodeErrorState>
    implements _$$ConfirmCodeErrorStateCopyWith<$Res> {
  __$$ConfirmCodeErrorStateCopyWithImpl(_$ConfirmCodeErrorState _value,
      $Res Function(_$ConfirmCodeErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmCodeErrorState implements ConfirmCodeErrorState {
  const _$ConfirmCodeErrorState();

  @override
  String toString() {
    return 'ConfirmCodeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmCodeErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value) $default, {
    required TResult Function(ConfirmCodeSuccessState value) success,
    required TResult Function(ConfirmCodeLaodingState value) loading,
    required TResult Function(ConfirmCodeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ConfirmCodeState value)? $default, {
    TResult? Function(ConfirmCodeSuccessState value)? success,
    TResult? Function(ConfirmCodeLaodingState value)? loading,
    TResult? Function(ConfirmCodeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ConfirmCodeState value)? $default, {
    TResult Function(ConfirmCodeSuccessState value)? success,
    TResult Function(ConfirmCodeLaodingState value)? loading,
    TResult Function(ConfirmCodeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ConfirmCodeErrorState implements ConfirmCodeState {
  const factory ConfirmCodeErrorState() = _$ConfirmCodeErrorState;
}
