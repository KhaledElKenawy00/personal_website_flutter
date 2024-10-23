import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class MySkills extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const MySkills({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(
              width: 60.w,
              height: 60.h,
              image: AssetImage(image),
            ),
            horizontalSpace(10),
            Text(
              title,
              style: TextStyles.font24WhiteMedium,
            ),
          ],
        ),
        verticalSpace(40),
        Text(
          description,
          style: TextStyles.font16WhiteRegular,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
