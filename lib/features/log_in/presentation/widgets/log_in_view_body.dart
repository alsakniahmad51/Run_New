import 'package:flutter/material.dart';
import 'package:running_app/features/Get_started/presentation/widgets/custom_button.dart';
import 'package:running_app/features/log_in/presentation/widgets/email_field.dart';
import 'package:running_app/features/log_in/presentation/widgets/go_to_sign_up.dart';
import 'package:running_app/features/log_in/presentation/widgets/log_in_text.dart';
import 'package:running_app/features/log_in/presentation/widgets/login_soshial_media.dart';
import 'package:running_app/features/log_in/presentation/widgets/password_field.dart';
import 'package:running_app/features/log_in/presentation/widgets/remember_me.dart';
import 'package:running_app/features/sign_up/presentation/widgets/divider.dart';
import 'package:running_app/features/sign_up/presentation/widgets/sigin_up_image.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            const LoginImage(),
            const LoginText(),
            const SizedBox(
              height: 16,
            ),
            const EmailField(),
            const SizedBox(
              height: 12,
            ),
            const PasswordField(),
            const SizedBox(
              height: 12,
            ),
            const RememberMe(),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              onPressed: () {},
              textButton: "Log In",
              minWidth: 326,
            ),
            const CustomDivider(),
            const SizedBox(
              height: 13,
            ),
            const LoginsochialMedia(),
            const SizedBox(
              height: 40,
            ),
            const GoToSignUp()
          ],
        ),
      ),
    );
  }
}
