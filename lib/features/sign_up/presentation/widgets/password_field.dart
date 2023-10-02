// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/utils/images/images.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/sign_up/presentation/widgets/custom_text_field.dart';

class PasswordSignUpField extends StatelessWidget {
  PasswordSignUpField({
    super.key,
    required this.onChanged,
  });
  // final void Function(String)? onFieldSubmitted;

  bool hide = true;
  final void Function(String)? onChanged;
  // void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      // onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      hidetext: hide,
      hintText: "Password",
      suffix: GestureDetector(
          onTap: () {
            if (hide == true) {
              hide = false;
            } else if (hide == false) {
              hide = true;
            }
          },
          child: SvgPicture.asset(ImagePath.password)),
      hintStyle: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
