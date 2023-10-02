import 'package:flutter/material.dart';
import 'package:running_app/core/utils/images/background_image.dart';
import 'package:running_app/core/utils/images/images.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BackGroundImage(
          padding: EdgeInsets.only(top: 24),
          imagepath: ImagePath.login,
          fit: BoxFit.contain,
          height: 120,
          width: 120),
    );
  }
}
