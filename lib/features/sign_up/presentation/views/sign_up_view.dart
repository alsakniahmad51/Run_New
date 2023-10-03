import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:running_app/core/utils/constants.dart';
import 'package:running_app/features/sign_up/presentation/manager/auth/auth_bloc.dart';
import 'package:running_app/features/sign_up/presentation/widgets/sign_up_view_body.dart';

class SiginUpView extends StatelessWidget {
  const SiginUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return ModalProgressHUD(
          opacity: 0,
          blur: 1,
          progressIndicator: const SpinKitThreeBounce(
            color: Color(0xff7B61FF),
            size: 30,
          ),
          inAsyncCall: BlocProvider.of<SignUpBloc>(context).loading,
          child: Scaffold(
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
          ),
        );
      },
    );
  }
}
