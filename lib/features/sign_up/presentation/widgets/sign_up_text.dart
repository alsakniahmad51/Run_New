import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 88),
      child: Text(
        "Sign Up",
        style: Styles.textStyle21,
        textAlign: TextAlign.center,
      ),
    );
  }
}


// ignore: camel_case_types
