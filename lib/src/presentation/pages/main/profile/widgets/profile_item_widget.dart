import 'package:flutter/material.dart';
import 'package:ploffe_kebab/src/core/extension/extension.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.isTop = false,
    this.isBottom = false,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  final Widget icon;
  final Widget? trailing;
  final String text;
  final bool isTop;
  final bool isBottom;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: isBottom ? const Radius.circular(12) : Radius.zero,
          bottomRight: isBottom ? const Radius.circular(12) : Radius.zero,
          topLeft: isTop ? const Radius.circular(12) : Radius.zero,
          topRight: isTop ? const Radius.circular(12) : Radius.zero,
        ),
      ),
      leading: Ink(
        height: 32,
        width: 32,
        decoration: const BoxDecoration(
          borderRadius: AppUtils.kBorderRadius10,
        ),
        child: icon,
      ),
      title: Text(text),
      trailing: trailing ??
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
          ),
    );
  }
}