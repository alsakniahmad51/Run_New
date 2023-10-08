import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:running_app/core/helper/custom_button.dart';
import 'package:running_app/core/utils/constants.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/auth/presentation/manager/sign_up/auth_bloc.dart';
import 'package:running_app/features/auth/presentation/views/body/auth_view_body.dart';

class SiginUpView extends StatefulWidget {
  const SiginUpView({super.key});

  @override
  State<SiginUpView> createState() => _SiginUpViewState();
}

class _SiginUpViewState extends State<SiginUpView> {
  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return ModalProgressHUD(
          opacity: 0,
          blur: 1,
          progressIndicator: const SpinKitThreeBounce(
            color: Color(0xff7B61FF),
            size: 30,
          ),
          inAsyncCall: BlocProvider.of<SignUpBloc>(context).loading,
          child: Scaffold(
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
              onTaptext: () {
                GoRouter.of(context).push(AppRouter.kLoginView);
              },
              lefttext: "Already have an account?",
              righttext: "LogIn",
              textbutton: "Sign Up",
              onChangedpassword: (p0) {
                password = p0;
              },
              onChangedemail: (p0) {
                email = p0;
              },
              onPressedbutton: () {
                // BlocProvider.of<SignUpBloc>(context).loading = true;
                BlocProvider.of<SignUpBloc>(context)
                    .add(SignUp(email: email, password: password));
              },
            ),
          ),
        );
      },
    );
  }
}
