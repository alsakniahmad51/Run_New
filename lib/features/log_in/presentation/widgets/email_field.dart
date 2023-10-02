import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/sign_up/presentation/widgets/custom_text_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "Dani@gmail.com",
      hintStyle: Styles.textStyle14
          .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
    );
  }
}
