import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/utils/images/images.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/sign_up/presentation/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hidetext: hide,
      hintText: "Password",
      suffix: GestureDetector(
          onTap: () {
            if (hide == true) {
              hide = false;
            } else if (hide == false) {
              hide = true;
            }
            setState(() {});
          },
          child: SvgPicture.asset(ImagePath.password)),
      hintStyle: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
