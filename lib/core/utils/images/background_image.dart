import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    required this.padding,
    required this.imagepath,
    super.key,
    required this.fit,
    required this.height,
    required this.width,
  });
  final double? height;
  final BoxFit fit;
  final EdgeInsetsGeometry padding;
  final String imagepath;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          imagepath,
          width: width,
          fit: fit,
        ),
      ),
    );
  }
}
// MediaQuery.of(context).size.height
//MediaQuery.of(context).size.width