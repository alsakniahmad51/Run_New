import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/utils/images/images.dart';

class CustomAuthDivider extends StatelessWidget {
  const CustomAuthDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 40),
          child: SvgPicture.asset(ImagePath.lin),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 22),
          child: Text(
            "Or continue with",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 12,
              color: Color(0xff4B576B),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 40),
          child: SvgPicture.asset(ImagePath.lin),
        ),
      ],
    );
  }
}
