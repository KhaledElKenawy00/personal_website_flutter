import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/core/helpers/spacing.dart';
import 'package:personal_website_flutter/ui/pages/hobbies_page.dart';
import 'package:personal_website_flutter/ui/pages/services_page.dart';
import 'package:personal_website_flutter/ui/widgets/hello_lets_talk.dart';

import '../widgets/my_image.dart';
import '../widgets/sections_and_menu.dart';
import 'portfolio_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF25202F),
      body: SingleChildScrollView(
        child: Padding(
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
              // TODO : remove this later
              verticalSpace(500),
            ],
          ),
        ),
      ),
    );
  }
}
