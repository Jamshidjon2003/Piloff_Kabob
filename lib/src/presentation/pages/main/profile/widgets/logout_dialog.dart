import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploffe_kebab/src/config/router/app_routes.dart';
import 'package:ploffe_kebab/src/core/extension/extension.dart';
import 'package:ploffe_kebab/src/presentation/bloc/main/main_bloc.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: AppUtils.kPaddingAll24,
      child: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Log out',
              textAlign: TextAlign.center,
            ),
            const Text(
              'Do you want to log out the app?',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            SizedBox(
              child: Row(children: [
                Expanded(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xffF1F1F1),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('No'),
                  ),
                ),
                AppUtils.kGap12,
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      context.read<MainBloc>().add(
                            const MainEventChanged(BottomMenu.search),
                          );
                      await localSource.clear().then(
                        (value) {
                          Navigator.pop(context);
                        },
                      );
                    },
                    child: const Text('Yes'),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}