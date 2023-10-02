import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/utils/images/images.dart';
import 'package:running_app/features/sign_up/presentation/widgets/google_auth.dart';

class LoginsochialMedia extends StatelessWidget {
  const LoginsochialMedia({
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
        SvgPicture.asset(ImagePath.face),
        SvgPicture.asset(ImagePath.twietter),
      ],
    );
  }
}
