import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ploff_final/src/data/models/auth/confirm_request.dart';

import '../../../../core/mixin/cache_mixin.dart';
import '../../../../domain/repositories/auth/auth_repository.dart';

part 'confirm_code_bloc.freezed.dart';

part 'confirm_code_event.dart';

part 'confirm_code_state.dart';

class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState>
    with CacheMixin {
  final AuthRepository authRepository;

  ConfirmCodeBloc(this.authRepository) : super(const ConfirmCodeState()) {
     on<ConfirmCodeButtonPressedEvent>(_onConfirmCode);
     on<ConfirmCodeRegisterButtonPressedEvent>(_onConfirmCodeRegister);

  }

  Future<void> _onConfirmCode(
      ConfirmCodeButtonPressedEvent event,
      Emitter<ConfirmCodeState> emit,
      ) async {
    emit(const ConfirmCodeState.loading());
    final result = await authRepository.confirmlogin(
        request: ConfirmRequest(
          code: event.code,
          phone: event.phone,
        ));
    result.fold(
          (l) {
        emit(const ConfirmCodeErrorState());
      },
          (r) {
        setUserInfo(
          name: r.name??'',
          id: r.id??'',
          phoneNumber: r.phone??'',
          accessToken: r.accessToken??'',
          refreshToken: r.refreshToken??'',
        );
        emit( const ConfirmCodeSuccessState());
      },
    );
  }

  Future<void> _onConfirmCodeRegister(
      ConfirmCodeRegisterButtonPressedEvent event,
      Emitter<ConfirmCodeState> emit,
      ) async {
    emit(const ConfirmCodeState.loading());
    final result = await authRepository.registerConfirm(
        request: ConfirmRequest(
          code: event.code,
          phone: event.phone,
        ));
    result.fold(
          (l) {
        emit(const ConfirmCodeErrorState());
      },
          (r) {
        setUserInfo(
          name: r.name??'',
          id: r.id??'',
          phoneNumber: r.phone??'',
          accessToken: r.accessToken??'',
          refreshToken: r.refreshToken??'',
        );
        emit( const ConfirmCodeSuccessState());
      },
    );
  }
}