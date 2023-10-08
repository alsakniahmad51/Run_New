import 'package:flutter/material.dart';
import 'package:running_app/core/utils/styles.dart';

class AuthText extends StatelessWidget {
  const AuthText({super.key, required this.authtext});
  final String authtext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 88),
      child: Text(
        authtext,
        style: Styles.textStyle21,
        textAlign: TextAlign.center,
      ),
    );
  }
}
