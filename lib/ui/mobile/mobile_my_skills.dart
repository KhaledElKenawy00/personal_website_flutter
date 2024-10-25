import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class MobileMySkills extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const MobileMySkills({
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              width: 100.w,
              image: AssetImage(image),
            ),
            horizontalSpace(40),
            Text(
              title,
              style: TextStyles.font48WhiteMedium,
            ),
          ],
        ),
        verticalSpace(14),
        Text(
          description,
          style: TextStyles.font48WhiteRegular,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
