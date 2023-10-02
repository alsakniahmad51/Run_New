import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      @required this.hintStyle,
      this.suffix,
      this.hidetext = false});
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? suffix;
  final bool hidetext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      // width: 327,
      child: TextFormField(
        obscureText: hidetext,
        decoration: InputDecoration(
          suffix: suffix,
          hintText: hintText,
          hintStyle: hintStyle,
          focusedBorder: outlinBorder(),
          enabledBorder: outlinBorder()
              .copyWith(borderSide: const BorderSide(color: Color(0xff414d5f))),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlinBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xff524da1),
      ),
    );
  }
}
