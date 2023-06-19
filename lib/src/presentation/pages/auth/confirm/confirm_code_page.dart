import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_final/src/presentation/bloc/auth/confirm/confirm_code_bloc.dart';
import 'package:ploff_final/src/presentation/pages/auth/arguments/auth_arguments.dart';

class ConfirmCodePage extends StatefulWidget {
  final AuthArguments arg;

  const ConfirmCodePage({
    Key? key,
    required this.arg,
  }) : super(key: key);

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  late PinTheme defaultPinTheme;
  late PinTheme focusedPinTheme;
  late PinTheme submittedPinTheme;
  late final TextEditingController controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller = TextEditingController();
    defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Colors.white,
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(10),
    );

    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConfirmCodeBloc, ConfirmCodeState>(
      listener: (_, state) {
        if (state is ConfirmCodeSuccessState) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.main, ModalRoute.withName('/main'));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Confirm code')),
        body: Center(
          child: Pinput(
            length: 6,
            autofocus: true,
            controller: controller,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,
            onCompleted: (pin) {
              if (pin.length == 6) {
                if (widget.arg.isRegister) {
                  context.read<ConfirmCodeBloc>().add(
                    ConfirmCodeRegisterButtonPressedEvent(
                      code: controller.text.trim(),
                      phone: widget.arg.phone,
                    ),
                  );
                } else {
                  context.read<ConfirmCodeBloc>().add(
                    ConfirmCodeButtonPressedEvent(
                      code: controller.text.trim(),
                      phone: widget.arg.phone,
                    ),
                  );
                }
              }
            },
          ),
        ),
        bottomNavigationBar: SafeArea(
          minimum: AppUtils.kPaddingAll16.copyWith(
            bottom: 16 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BlocBuilder<ConfirmCodeBloc, ConfirmCodeState>(
            buildWhen: (previous, current) =>
                previous is AuthPhoneState != current is AuthPhoneState,
            builder: (_, state) {
              return ElevatedButton(
                onPressed: state is AuthPhoneState
                    ? () {
                        if (widget.arg.isRegister) {
                          context.read<ConfirmCodeBloc>().add(
                                ConfirmCodeRegisterButtonPressedEvent(
                                  code: controller.text.trim(),
                                  phone: widget.arg.phone,
                                ),
                              );
                        } else {
                          context.read<ConfirmCodeBloc>().add(
                                ConfirmCodeButtonPressedEvent(
                                  code: controller.text.trim(),
                                  phone: widget.arg.phone,
                                ),
                              );
                        }
                      }
                    : null,
                child: const Text('Продолжить'),
              );
            },
          ),
        ),
      ),
    );
  }
}
