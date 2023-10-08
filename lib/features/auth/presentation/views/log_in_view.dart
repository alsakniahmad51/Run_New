import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:running_app/core/utils/constants.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:running_app/features/auth/presentation/views/body/auth_view_body.dart';

class LogInView extends StatelessWidget {
  LogInView({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: kPrimeryColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.keyboard_backspace)),
      ),
      body: AuthViewBody(
        lefttext: "New User?",
        righttext: "Sign Up",
        onTaptext: () {
          GoRouter.of(context).push(AppRouter.ksignupView);
        },
        onPressedbutton: () {},
        textbutton: "Log In",
        onChangedemail: (p0) {
          email = p0;
        },
        onChangedpassword: (p0) {
          password = p0;
        },
      ),
    );
  }
}
