import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_final/src/config/router/app_routes.dart';
import 'package:ploff_final/src/presentation/bloc/register/register_bloc.dart';
import 'package:ploff_final/src/presentation/pages/auth/arguments/auth_arguments.dart';

import '../../../config/themes/themes.dart';

class RegisterPage extends StatefulWidget {
  final String phone;

  const RegisterPage({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<RegisterPage> {
  late final TextEditingController controller;
  late final TextEditingController namecontroller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    namecontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    controller.text = widget.phone;
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (_, state) {
        if (state is RegisterSuccessState) {
          Navigator.of(context).pushNamed(
            Routes.confirmCode,
            arguments: AuthArguments(phone: widget.phone, isRegister: true),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: Column(
          children: [
            Center(
              child: TextField(
                controller: controller,
                enabled: false,
              ),
            ),
            Center(
              child: TextField(
                autofocus: true,
                controller: namecontroller,
                style: Theme.of(context).textTheme.titleMedium,
                decoration: const InputDecoration(hintText: "Name"),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SafeArea(
          minimum: AppUtils.kPaddingAll16.copyWith(
            bottom: 16 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ElevatedButton(
            onPressed: () {
              context.read<RegisterBloc>().add(RegisterButtonPressedEvent(
                    name: namecontroller.text,
                    phone: widget.phone,
                  ));
            },
            child: const Text('Продолжить'),
          ),
        ),
      ),
    );
  }
}
