import 'package:formz/formz.dart';
import 'package:ploff_final/src/core/inputs/email_input.dart';
import 'package:ploff_final/src/core/inputs/password_input.dart';

class LoginForm with FormzMixin {
  final EmailInput emailInput;
  final PasswordInput passwordInput;

  LoginForm({
    required this.emailInput,
    required this.passwordInput,
  });

  @override
  List<FormzInput> get inputs => [
        emailInput,
        passwordInput,
      ];
}
