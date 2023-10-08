import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:running_app/core/helper/custom_button.dart';
import 'package:running_app/core/utils/constants.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/auth/presentation/manager/sign_up/auth_bloc.dart';
import 'package:running_app/features/auth/presentation/widgets/auth_logo.dart';
import 'package:running_app/features/auth/presentation/widgets/auth_text.dart';
import 'package:running_app/features/auth/presentation/widgets/divider.dart';
import 'package:running_app/features/auth/presentation/widgets/email_field.dart';
import 'package:running_app/features/auth/presentation/widgets/password_field.dart';
import 'package:running_app/features/auth/presentation/widgets/remember_me.dart';
import 'package:running_app/features/auth/presentation/widgets/sign_up_with_soshial_media.dart';

class AuthViewBody extends StatefulWidget {
  const AuthViewBody(
      {super.key,
      required this.onPressedbutton,
      required this.textbutton,
      this.onChangedemail,
      this.onChangedpassword,
      required this.lefttext,
      required this.righttext,
      this.onTaptext});
  final String? textbutton;
  final String? lefttext;
  final String? righttext;
  final void Function()? onPressedbutton;
  final void Function(String?)? onChangedemail;
  final void Function(String?)? onChangedpassword;
  final void Function()? onTaptext;

  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

class _AuthViewBodyState extends State<AuthViewBody> {
  String? email;

  String? password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          BlocProvider.of<SignUpBloc>(context).loading = true;
        } else if (state is SignUpSuccess) {
          BlocProvider.of<SignUpBloc>(context).loading = false;
        } else if (state is SignUpFailure) {
          // ignore: avoid_print
          print("error from ahmad");
          BlocProvider.of<SignUpBloc>(context).loading = false;
          return setState(() {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: AlertDialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  backgroundColor: kPrimeryColor,
                  title: const Icon(Icons.block, color: Colors.red, size: 50),
                  content: SizedBox(
                    height: 100,
                    child: Column(
                      children: [
                        // Icon(Icons.block, color: Colors.red, size: 50),

                        const Text(
                          'Authentecation Error',
                          style: Styles.textStyle21,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "${state.errmaessage};",
                          style: Styles.textStyle14,
                        )
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 32, right: 10, left: 10),
                          child: CustomButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              textButton: "Ok"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        } else {
          CustomButton(onPressed: () {}, textButton: "textButton");
        }
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formkey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                children: [
                  const AuthLogo(),
                  AuthText(authtext: widget.textbutton!),
                  const SizedBox(
                    height: 16,
                  ),
                  EmailAuthField(
                    onChanged: widget.onChangedemail,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  PasswordAuthField(onChanged: widget.onChangedpassword),
                  const SizedBox(
                    height: 12,
                  ),
                  const RememberAuthMe(),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                    onPressed: widget.onPressedbutton,
                    textButton: widget.textbutton!,
                    minWidth: 326,
                  ),
                  const CustomAuthDivider(),
                  const SizedBox(
                    height: 13,
                  ),
                  const SignUpAuthsochialMedia(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${widget.lefttext}",
                        style: Styles.textStyle14.copyWith(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: widget.onTaptext,
                        child: Text(
                          "${widget.righttext}",
                          style: Styles.textStyle14
                              .copyWith(color: const Color(0xff715be7)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
