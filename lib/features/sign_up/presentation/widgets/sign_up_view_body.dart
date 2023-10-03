// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_app/features/Get_started/presentation/widgets/custom_button.dart';
import 'package:running_app/features/sign_up/presentation/manager/auth/auth_bloc.dart';
import 'package:running_app/features/sign_up/presentation/widgets/divider.dart';
import 'package:running_app/features/sign_up/presentation/widgets/email_field.dart';
import 'package:running_app/features/sign_up/presentation/widgets/sigin_up_image.dart';
import 'package:running_app/features/sign_up/presentation/widgets/sign_up_text.dart';
import 'package:running_app/features/sign_up/presentation/widgets/signup_soshial_media.dart';
import 'package:running_app/features/sign_up/presentation/widgets/password_field.dart';
import 'package:running_app/features/sign_up/presentation/widgets/remember_me.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({
    super.key,
  });
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          BlocProvider.of<SignUpBloc>(context).loading = true;
        } else if (state is SignUpSuccess) {
          BlocProvider.of<SignUpBloc>(context).loading = false;
        } else {
          // ignore: avoid_print
          print("error from ahmad");
          BlocProvider.of<SignUpBloc>(context).loading = false;
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              children: [
                const LoginImage(),
                const SignUpText(),
                const SizedBox(
                  height: 16,
                ),
                EmailSignUpField(
                  onChanged: (p0) {
                    email = p0;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                PasswordSignUpField(
                  onChanged: (p0) {
                    password = p0;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                const RememberSignUpMe(),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                  onPressed: () {
                    // BlocProvider.of<SignUpBloc>(context).loading = true;
                    BlocProvider.of<SignUpBloc>(context)
                        .add(SignUp(email: email, password: password));
                  },
                  textButton: "Sign Up",
                  minWidth: 326,
                ),
                const CustomDivider(),
                const SizedBox(
                  height: 13,
                ),
                const SignUpsochialMedia(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
