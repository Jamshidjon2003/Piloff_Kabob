import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ploff_final/src/core/mixin/cache_mixin.dart';
import 'package:ploff_final/src/data/models/auth/register_request.dart';
import 'package:ploff_final/src/domain/repositories/auth/auth_repository.dart';

part 'register_bloc.freezed.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> with CacheMixin {
  final AuthRepository authRepository;

  RegisterBloc(this.authRepository) : super(const RegisterState()) {
    on<RegisterButtonPressedEvent>(_onRegister);
  }

  Future<void> _onRegister(
    RegisterButtonPressedEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(const RegisterState.loading());
    final result = await authRepository.registerlog(
        request: RegisterRequest(
      name: event.name,
      phone: event.phone,
    ));
    result.fold(
      (l) {
        emit(const RegisterErrorState());
      },
      (r) {
        emit(const RegisterSuccessState());
      },
    );
  }
}
