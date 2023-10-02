import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/Get_started/presentation/widgets/custom_button.dart';

class GroupItems extends StatelessWidget {
  const GroupItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Running App",
                style: Styles.textStyle30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 70, right: 70, top: 12),
                child: Text(
                  "Run and earn with our app.Some\n text Example will be her",
                  style: Styles.textStyle14,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                textButton: "Get Started",
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kRunview);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
