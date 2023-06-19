import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ploff_final/src/data/models/auth/login_request.dart';
import 'package:ploff_final/src/data/models/auth/phone_request.dart';
import 'package:ploff_final/src/domain/network/failure.dart';
import 'package:ploff_final/src/domain/repositories/auth/auth_repository.dart';

part 'auth_state.dart';

part 'auth_event.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(const AuthState()) {
    on<AuthPhoneChangeEvent>(_onChanged);
    on<PhoneNumberButtonPressedEvent>(_buttonPressedHandler);
  }

  void _onChanged(AuthPhoneChangeEvent event, Emitter<AuthState> emit) {
    if (event.value.length <= 11) {
      emit(const AuthState());
      return;
    }
    emit(AuthPhoneState(event.value));
  }

  Future<void> _buttonPressedHandler(
      PhoneNumberButtonPressedEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await authRepository.phone(
      request: PhoneRequest(
        phone: "+998${event.phone.replaceAll(" ", "")}",
      ),
    );
    await result.fold(
      (l) {
        if ((l as ServerFailure).message == 'Not Found') {
          emit(AuthState.register("+998${event.phone.replaceAll(" ", "")}"));
        } else {
          emit(const AuthState.error());
        }
      },
      (r)  async {
        final loginResult = await authRepository.login(
            request: LoginRequest(phone: "${r.phone?.replaceAll(" ", "")}"));

        loginResult.fold((l) => emit(const AuthState.error()), (right) {
          if (right.message!.contains("Code has been sent")) {
            emit(
              AuthState.success(r.phone ?? ""),
            );
          }
        });
      },
    );
  }
}
