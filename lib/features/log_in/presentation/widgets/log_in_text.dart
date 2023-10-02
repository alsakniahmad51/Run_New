import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';

class LoginText extends StatelessWidget {
  const LoginText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 88),
      child: Text(
        "Log In",
        style: Styles.textStyle21,
        textAlign: TextAlign.center,
      ),
    );
  }
}


// ignore: camel_case_types
