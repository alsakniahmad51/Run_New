import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/auth/presentation/widgets/custom_check.dart';

class RememberAuthMe extends StatelessWidget {
  const RememberAuthMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomAuthCheckBox(),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            "Remember Me ",
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            "Forgot Password ?",
            style: Styles.textStyle14.copyWith(color: const Color(0xff7B61FF)),
          ),
        ),
      ],
    );
  }
}
