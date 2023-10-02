import 'package:flutter/material.dart';
import 'package:running_app/core/utils/images/background_image.dart';
import 'package:running_app/core/utils/images/images.dart';

class RunImage extends StatelessWidget {
  const RunImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.08
          //70
          ,
          bottom: 24),
      child: Center(
        child: BackGroundImage(
          height: MediaQuery.of(context).size.height * 0.29
          //242
          ,
          width: MediaQuery.of(context).size.width * 0.84
          //316
          ,
          imagepath: ImagePath.run,
          fit: BoxFit.contain,
          padding: const EdgeInsets.only(),
        ),
      ),
    );
  }
}
