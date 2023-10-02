import 'package:flutter/material.dart';
import 'package:running_app/features/Run/presentation/widgets/intro.dart';

class SliderRun extends StatelessWidget {
  const SliderRun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64),
            color: const Color(0xff5d6774),
          ),
          height: MediaQuery.of(context).size.height * 0.375
          //305
          ,
          width:
              // 313
              MediaQuery.of(context).size.width * 0.83,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.373
            //  303
            ,
            width: MediaQuery.of(context).size.width * 0.82
            // 311
            ,
            child: const OnBoardingPage())
      ],
    );
  }
}
