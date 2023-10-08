import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      @required this.hintStyle,
      this.suffix,
      this.hidetext = false,
      this.onChanged,
      // this.onSaved,
      required this.validator});
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? suffix;
  final bool hidetext;
  // final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      // width: 327,
      child: TextFormField(
        // onSaved: onSaved,
        validator: validator,
        onChanged: onChanged,
        // onFieldSubmitted: onFieldSubmitted,
        obscureText: hidetext,
        decoration: InputDecoration(
          constraints: const BoxConstraints(maxHeight: 100, minHeight: 3),
          // errorStyle: const TextStyle(fontSize: 10),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
