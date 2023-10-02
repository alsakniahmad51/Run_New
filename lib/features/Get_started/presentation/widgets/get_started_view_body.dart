import 'package:flutter/material.dart';
import 'package:running_app/core/utils/images/background_image.dart';
import 'package:running_app/core/utils/images/images.dart';
import 'package:running_app/features/Get_started/presentation/widgets/group_item.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            BackGroundImage(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 101),
              fit: BoxFit.fill,
              imagepath: ImagePath.imagegetstart,
            ),
            const GroupItems()
          ],
        )
      ],
    );
  }
}
