import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/manager/refresh/refresh_cubit.dart';

class GoToSignUp extends StatelessWidget {
  const GoToSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "New User?",
          style: Styles.textStyle14.copyWith(color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<RefreshCubit>(context)
                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                .emit(RefresRebuild());
            GoRouter.of(context).push(AppRouter.ksignupView);
            GoRouter.of(context).push(AppRouter.ksignupView);
          },
          child: Text(
            "Sign Up",
            style: Styles.textStyle14.copyWith(color: const Color(0xff677FFF)),
          ),
        )
      ],
    );
  }
}
