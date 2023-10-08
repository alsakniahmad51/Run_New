import 'package:flutter/material.dart';
import 'package:running_app/core/helper/custom_text_field.dart';
import 'package:running_app/core/utils/styles.dart';

class EmailAuthField extends StatelessWidget {
  const EmailAuthField({
    super.key,
    this.onFieldSubmitted,
    this.onChanged,
    // this.onSaved,
  });
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  // final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Required";
        } else if (!value!.contains("@")) {
          return "Correct write your email";
        }
        return null;
      },
      // onSaved: onSaved,
      onChanged: onChanged,
      hintText: "Dani@gmail.com",
      hintStyle: Styles.textStyle14
          .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
    );
  }
}
