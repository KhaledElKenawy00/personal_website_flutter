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
          children: [
            Image(
              width: 50.w,
              image: AssetImage(image),
            ),
            horizontalSpace(10),
            Text(
              title,
              style: TextStyles.font20WhiteMedium,
            ),
          ],
        ),
        verticalSpace(10),
        Text(
          description,
          style: TextStyles.font16WhiteRegular,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
