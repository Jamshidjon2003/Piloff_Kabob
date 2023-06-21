part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState() = _RegisterState;

  const factory RegisterState.success() = RegisterSuccessState;

  const factory RegisterState.loading() = RegisterLaodingState;

   const factory RegisterState.error() = RegisterErrorState;
}