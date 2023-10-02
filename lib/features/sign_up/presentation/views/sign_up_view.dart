import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:running_app/core/utils/constants.dart';
import 'package:running_app/features/sign_up/presentation/widgets/sign_up_view_body.dart';

class SiginUpView extends StatelessWidget {
  const SiginUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: kPrimeryColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.keyboard_backspace)),
      ),
      body: SignUpViewBody(),
    );
  }
}
