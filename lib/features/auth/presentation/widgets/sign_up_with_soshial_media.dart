import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/helper/custom_button.dart';
import 'package:running_app/core/utils/constants.dart';
import 'package:running_app/core/utils/images/images.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/auth/presentation/widgets/google_auth.dart';

class SignUpAuthsochialMedia extends StatelessWidget {
  const SignUpAuthsochialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () async {
            await signInWithGoogle();
          },
          child: SvgPicture.asset(
            ImagePath.google,
          ),
        ),
        GestureDetector(
            onTap: () {
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
                    content: const SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          // Icon(Icons.block, color: Colors.red, size: 50),

                          Text(
                            'Authentecation Error',
                            style: Styles.textStyle21,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "there was a proplem ",
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
                                  Navigator.pop(
                                    context,
                                  );
                                },
                                textButton: "Ok"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            child: SvgPicture.asset(ImagePath.face)),
        SvgPicture.asset(ImagePath.twietter),
      ],
    );
  }
}
