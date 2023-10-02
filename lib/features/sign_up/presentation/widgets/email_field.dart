import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/sign_up/presentation/widgets/custom_text_field.dart';

class EmailSignUpField extends StatelessWidget {
  const EmailSignUpField({
    super.key,
    this.onFieldSubmitted,
    this.onChanged,
  });
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChanged: onChanged,
      hintText: "Dani@gmail.com",
      hintStyle: Styles.textStyle14
          .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
    );
  }
}
