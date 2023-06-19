part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState() = _AuthState;

  const factory AuthState.success(String phone) =
      AuthSuccessState;

  const factory AuthState.loading() = AuthLaodingState;

  const factory AuthState.phone(String phone) = AuthPhoneState;

  const factory AuthState.error() = AuthErrorState;

  const factory AuthState.register(String phone) = AuthRegisterState;
}
