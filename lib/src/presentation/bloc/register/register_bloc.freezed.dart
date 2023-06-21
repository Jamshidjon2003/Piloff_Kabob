// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterButtonPressedEvent value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterButtonPressedEvent value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterButtonPressedEvent value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterButtonPressedEventCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$RegisterButtonPressedEventCopyWith(
          _$RegisterButtonPressedEvent value,
          $Res Function(_$RegisterButtonPressedEvent) then) =
      __$$RegisterButtonPressedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class __$$RegisterButtonPressedEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterButtonPressedEvent>
    implements _$$RegisterButtonPressedEventCopyWith<$Res> {
  __$$RegisterButtonPressedEventCopyWithImpl(
      _$RegisterButtonPressedEvent _value,
      $Res Function(_$RegisterButtonPressedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_$RegisterButtonPressedEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterButtonPressedEvent implements RegisterButtonPressedEvent {
  const _$RegisterButtonPressedEvent({required this.name, required this.phone});

  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'RegisterEvent.register(name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterButtonPressedEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterButtonPressedEventCopyWith<_$RegisterButtonPressedEvent>
      get copyWith => __$$RegisterButtonPressedEventCopyWithImpl<
          _$RegisterButtonPressedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone) register,
  }) {
    return register(name, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone)? register,
  }) {
    return register?.call(name, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(name, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterButtonPressedEvent value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterButtonPressedEvent value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterButtonPressedEvent value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterButtonPressedEvent implements RegisterEvent {
  const factory RegisterButtonPressedEvent(
      {required final String name,
      required final String phone}) = _$RegisterButtonPressedEvent;

  @override
  String get name;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$RegisterButtonPressedEventCopyWith<_$RegisterButtonPressedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
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
    TResult Function(_RegisterState value) $default, {
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisterLaodingState value) loading,
    required TResult Function(RegisterErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegisterState value)? $default, {
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisterLaodingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisterLaodingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState();

  @override
  String toString() {
    return 'RegisterState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterState);
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
    TResult Function(_RegisterState value) $default, {
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisterLaodingState value) loading,
    required TResult Function(RegisterErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegisterState value)? $default, {
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisterLaodingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisterLaodingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState() = _$_RegisterState;
}

/// @nodoc
abstract class _$$RegisterSuccessStateCopyWith<$Res> {
  factory _$$RegisterSuccessStateCopyWith(_$RegisterSuccessState value,
          $Res Function(_$RegisterSuccessState) then) =
      __$$RegisterSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSuccessStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterSuccessState>
    implements _$$RegisterSuccessStateCopyWith<$Res> {
  __$$RegisterSuccessStateCopyWithImpl(_$RegisterSuccessState _value,
      $Res Function(_$RegisterSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterSuccessState implements RegisterSuccessState {
  const _$RegisterSuccessState();

  @override
  String toString() {
    return 'RegisterState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSuccessState);
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
    TResult Function(_RegisterState value) $default, {
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisterLaodingState value) loading,
    required TResult Function(RegisterErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegisterState value)? $default, {
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisterLaodingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisterLaodingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessState implements RegisterState {
  const factory RegisterSuccessState() = _$RegisterSuccessState;
}

/// @nodoc
abstract class _$$RegisterLaodingStateCopyWith<$Res> {
  factory _$$RegisterLaodingStateCopyWith(_$RegisterLaodingState value,
          $Res Function(_$RegisterLaodingState) then) =
      __$$RegisterLaodingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLaodingStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterLaodingState>
    implements _$$RegisterLaodingStateCopyWith<$Res> {
  __$$RegisterLaodingStateCopyWithImpl(_$RegisterLaodingState _value,
      $Res Function(_$RegisterLaodingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLaodingState implements RegisterLaodingState {
  const _$RegisterLaodingState();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLaodingState);
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
    TResult Function(_RegisterState value) $default, {
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisterLaodingState value) loading,
    required TResult Function(RegisterErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegisterState value)? $default, {
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisterLaodingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisterLaodingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLaodingState implements RegisterState {
  const factory RegisterLaodingState() = _$RegisterLaodingState;
}

/// @nodoc
abstract class _$$RegisterErrorStateCopyWith<$Res> {
  factory _$$RegisterErrorStateCopyWith(_$RegisterErrorState value,
          $Res Function(_$RegisterErrorState) then) =
      __$$RegisterErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterErrorStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterErrorState>
    implements _$$RegisterErrorStateCopyWith<$Res> {
  __$$RegisterErrorStateCopyWithImpl(
      _$RegisterErrorState _value, $Res Function(_$RegisterErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterErrorState implements RegisterErrorState {
  const _$RegisterErrorState();

  @override
  String toString() {
    return 'RegisterState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterErrorState);
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
    TResult Function(_RegisterState value) $default, {
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisterLaodingState value) loading,
    required TResult Function(RegisterErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegisterState value)? $default, {
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisterLaodingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegisterState value)? $default, {
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisterLaodingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterErrorState implements RegisterState {
  const factory RegisterErrorState() = _$RegisterErrorState;
}
