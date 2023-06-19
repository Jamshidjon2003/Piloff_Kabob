part of 'confirm_code_bloc.dart';

@freezed
class ConfirmCodeEvent with _$ConfirmCodeEvent {

  const factory ConfirmCodeEvent.confirmCode({
    required String code,
    required String phone,
  }) = ConfirmCodeButtonPressedEvent;

  const factory ConfirmCodeEvent.confirmCodeRegister({
    required String code,
    required String phone,
  }) = ConfirmCodeRegisterButtonPressedEvent;

}