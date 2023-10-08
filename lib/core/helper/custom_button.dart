import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  const CustomButton({
    this.minWidth = 300,
    required this.onPressed,
    super.key,
    required this.textButton,
  });
  final void Function()? onPressed;
  final double? minWidth;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: MaterialButton(
        height: 56,
        minWidth: minWidth,
        color: const Color(0xff7b61ff),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
