import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/core/extension/extension.dart';
import 'package:ploff_final/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_final/src/presentation/components/custom_texfield/masked_text_input_formatter.dart';
import 'package:ploff_final/src/presentation/components/loading_widgets/modal_progress_hud.dart';
import 'package:ploff_final/src/presentation/pages/auth/arguments/auth_arguments.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (_, state) {
        if (state is AuthSuccessState) {
          Navigator.of(context).pushNamed(
            Routes.confirmCode,
            arguments: AuthArguments(
              phone: state.phone,
              isRegister: false,
            ),
          );
        } else if (state is AuthRegisterState) {
          Navigator.of(context).pushNamed(
            Routes.register,
            arguments: state.phone,
          );
        }
      },
      child: Scaffold(
        backgroundColor: context.color.white,
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: AppUtils.kPaddingHor16Ver12,
                child: Text('Your phone number'),
              ),
            ),
          ),
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          buildWhen: (previous, current) =>
              previous is AuthLaodingState != current is AuthLaodingState,
          builder: (_, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AuthLaodingState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppUtils.kGap24,
                  const Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child:
                        Text('We will send a verification code to your number'),
                  ),
                  AppUtils.kGap40,
                  const Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child: Text('Phone number'),
                  ),
                  AppUtils.kGap6,
                  Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child: TextField(
                      autofocus: true,
                      controller: controller,
                      style: Theme.of(context).textTheme.titleMedium,
                      inputFormatters: [
                        MaskedTextInputFormatter(
                          mask: '## ### ## ##',
                          separator: ' ',
                        ),
                        FilteringTextInputFormatter.allow(
                          RegExp(r'\d'),
                          replacementString: ' ',
                        ),
                      ],
                      decoration: InputDecoration(
                        prefixText: '+998 ',
                        prefixStyle: Theme.of(context).textTheme.titleMedium,
                      ),
                      onChanged: (value) {
                        context.read<AuthBloc>().add(
                              AuthPhoneChangeEvent(value),
                            );
                      },
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: SafeArea(
          minimum: AppUtils.kPaddingAll16.copyWith(
            bottom: 16 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                previous is AuthPhoneState != current is AuthPhoneState,
            builder: (_, state) {
              return ElevatedButton(
                onPressed: state is AuthPhoneState
                    ? () {
                        context.read<AuthBloc>().add(
                            PhoneNumberButtonPressedEvent(controller.text));
                      }
                    : null,
                child: const Text('Verify phone number'),
              );
            },
          ),
        ),
      ),
    );
  }
}
