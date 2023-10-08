import 'package:flutter/material.dart';

class CustomAuthCheckBox extends StatefulWidget {
  const CustomAuthCheckBox({super.key});

  @override
  State<CustomAuthCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomAuthCheckBox> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        activeColor: const Color(0xff7b61ff),
        value: check,
        onChanged: (value) {
          setState(() {});
          check = value!;
        },
      ),
    );
  }
}
