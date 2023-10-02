import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/Run/presentation/widgets/run_image.dart';

class RunViewBody extends StatelessWidget {
  const RunViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const RunImage(),
        // const SliderRun(),
        const SizedBox(
          height: 34,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Alredy have an account ?",
              style: Styles.textStyle14.copyWith(color: Colors.white),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kLoginView);
              },
              child: Text(
                " Log in",
                style:
                    Styles.textStyle14.copyWith(color: const Color(0xff715be7)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
