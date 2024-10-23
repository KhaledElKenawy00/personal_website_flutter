import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class MobileSections extends StatelessWidget {
  const MobileSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          width: 90.w,
          height: 90.h,
          image: const AssetImage('assets/images/name_logo.png'),
        ),
        horizontalSpace(100),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
                  style: TextStyles.font48WhiteMedium,
                ),
              ),
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
                  style: TextStyles.font48WhiteMedium,
                ),
              ),
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
                  style: TextStyles.font48WhiteMedium,
                ),
              ),
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
                  style: TextStyles.font48WhiteMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
