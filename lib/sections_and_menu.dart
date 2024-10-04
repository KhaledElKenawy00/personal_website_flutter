import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/core/spacing.dart';

import 'core/theming/styles.dart';

class SectionsAndMenu extends StatelessWidget {
  const SectionsAndMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          width: 50.w,
          height: 50.h,
          image: const AssetImage('assets/images/name_logo.png'),
        ),
        horizontalSpace(100),
        Text(
          'About',
          style: TextStyles.font20WhiteMedium,
        ),
        horizontalSpace(40),
        Text(
          'Services',
          style: TextStyles.font20WhiteMedium,
        ),
        horizontalSpace(40),
        Text(
          'Works',
          style: TextStyles.font20WhiteMedium,
        ),
        horizontalSpace(40),
        Text(
          'Blog',
          style: TextStyles.font20WhiteMedium,
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
