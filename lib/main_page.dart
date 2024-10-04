import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/core/spacing.dart';
import 'package:personal_website_flutter/core/theming/colors.dart';
import 'package:personal_website_flutter/core/theming/styles.dart';
import 'package:personal_website_flutter/hello_lets_talk.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'sections_and_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF25202F),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 165.w, right: 165.w, top: 50.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionsAndMenu(),
                    verticalSpace(124),
                    const HelloLetsTalk(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Row(
                  children: [
                    const Spacer(),
                    Stack(
                      children: [
                        SimpleShadow(
                          opacity: 1,
                          color: const Color(0xFFAC6AFF),
                          offset: const Offset(10, 10),
                          sigma: 10,
                          child: Image(
                            width: 650.w,
                            height: 650.h,
                            image:
                                const AssetImage('assets/images/my_image.png'),
                          ),
                        ),
                        Image(
                          width: 750.w,
                          height: 750.h,
                          image:
                              const AssetImage('assets/images/my_image_bg.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
