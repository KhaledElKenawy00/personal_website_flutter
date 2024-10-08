import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/ui/widgets/hello_lets_talk.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_hello_lets_talk.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_my_image.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_sections.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_services_page.dart';
import 'package:personal_website_flutter/ui/widgets/my_image.dart';
import 'package:personal_website_flutter/ui/widgets/sections_and_menu.dart';

import '../../core/helpers/spacing.dart';
import '../pages/hobbies_page.dart';
import '../pages/portfolio_page.dart';
import '../pages/services_page.dart';
import 'lets_talk.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 100.w, vertical: 50.h),
      child: Column(
        children: [
          const Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  MobileSections(),
                  Row(
                    children: [
                      MobileHelloLetsTalk(),
                      MobileMyImage(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(60),
          const MobileServicesPage(),
          verticalSpace(150),
          const PortfolioPage(),
          verticalSpace(150),
          const HobbiesPage(),
          verticalSpace(150),
          const LetsTalk(),
          verticalSpace(500)
        ],
      ),
    );
  }
}
