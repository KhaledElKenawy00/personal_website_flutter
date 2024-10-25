import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import 'hello_lets_talk.dart';
import 'hobbies_page.dart';
import 'lets_talk.dart';
import 'my_image.dart';
import 'portfolio_page.dart';
import 'sections_and_menu.dart';
import 'services_page.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 165.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 165.w, top: 50.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionsAndMenu(),
                    verticalSpace(124),
                    const HelloLetsTalk(),
                  ],
                ),
              ),
              const MyImage(),
            ],
          ),
          verticalSpace(100),
          const ServicesPage(),
          verticalSpace(200),
          const PortfolioPage(),
          verticalSpace(200),
          const HobbiesPage(),
          verticalSpace(200),
          const LetsTalk(),
          verticalSpace(100)
        ],
      ),
    );
  }
}
