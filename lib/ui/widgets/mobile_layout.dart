import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_hello_lets_talk.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_my_image.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_portfolio_page.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_sections.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_services_page.dart';

import '../../core/helpers/spacing.dart';
import '../pages/hobbies_page.dart';
import 'lets_talk.dart';
import 'mobile_hobbies_page.dart';
import 'mobile_lets_talk.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 100.w, vertical: 20.h),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  const MobileSections(),
                  verticalSpace(50),
                  const Row(
                    children: [
                      MobileHelloLetsTalk(),
                      MobileMyImage(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(120),
          const MobileServicesPage(),
          verticalSpace(120),
          const MobilePortfolioPage(),
          verticalSpace(120),
          const MobileHobbiesPage(),
          verticalSpace(120),
          const MobileLetsTalk(),
        ],
      ),
    );
  }
}
