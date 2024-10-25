import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_website_flutter/core/helpers/spacing.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/theming/styles.dart';

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
        InkWell(
          onTap: () {
            Scrollable.ensureVisible(
              GlobalKeys.aboutKey.currentContext!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
          child: Text(
            'About',
            style: TextStyles.font20WhiteMedium,
          ),
        ),
        horizontalSpace(40),
        InkWell(
          onTap: () {
            Scrollable.ensureVisible(
              GlobalKeys.servicesKey.currentContext!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
          child: Text(
            'Services',
            style: TextStyles.font20WhiteMedium,
          ),
        ),
        horizontalSpace(40),
        InkWell(
          onTap: () {
            Scrollable.ensureVisible(
              GlobalKeys.portfolioKey.currentContext!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
          child: Text(
            'Portfolio',
            style: TextStyles.font20WhiteMedium,
          ),
        ),
        horizontalSpace(40),
        InkWell(
          onTap: () {
            Scrollable.ensureVisible(
              GlobalKeys.hobbiesKey.currentContext!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
          child: Text(
            'Hobbies',
            style: TextStyles.font20WhiteMedium,
          ),
        ),
       
      ],
    );
  }
}
