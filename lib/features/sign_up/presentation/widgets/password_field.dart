// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/utils/images/images.dart';
import 'package:running_app/core/utils/styles.dart';
import 'package:running_app/features/sign_up/presentation/widgets/custom_text_field.dart';
import 'package:running_app/manager/refresh/refresh_cubit.dart';

class PasswordSignUpField extends StatelessWidget {
  PasswordSignUpField({
    super.key,
    required this.onChanged,
  });
  // final void Function(String)? onFieldSubmitted;

  bool hide = true;
  final void Function(String)? onChanged;
  // void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RefreshCubit, RefreshState>(
      builder: (context, state) {
        if (state is RefresRebuild) {
          return CustomTextField(
            // onFieldSubmitted: onFieldSubmitted,
            onChanged: onChanged,
            hidetext: hide,
            hintText: "Password",
            suffix: GestureDetector(
                onTap: () {
                  if (hide == true) {
                    hide = false;
                  } else if (hide == false) {
                    hide = true;
                  }
                  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                  BlocProvider.of<RefreshCubit>(context).emit(RefresRebuild());
                },
                child: SvgPicture.asset(ImagePath.password)),
            hintStyle: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          );
        }
        return const Text("sknckasnckas ");
      },
    );
  }
}
/*return CustomTextField(
          // onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          hidetext: hide,
          hintText: "Password",
          suffix: GestureDetector(
              onTap: () {
                if (hide == true) {
                  hide = false;
                } else if (hide == false) {
                  hide = true;
                }
              },
              child: SvgPicture.asset(ImagePath.password)),
          hintStyle: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        );
       */