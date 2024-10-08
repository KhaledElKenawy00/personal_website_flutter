import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class HelloLetsTalk extends StatelessWidget {
  const HelloLetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: GlobalKeys.aboutKey,
      padding: EdgeInsetsDirectional.only(start: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,',
            style: TextStyles.font24WhiteMedium,
          ),
          Text(
            'Omar Ahmed',
            style: TextStyles.font60WhiteBold,
          ),
          Text(
            'Mobile Tech Lead',
            style: TextStyles.font24LightgreyRegular,
          ),
          verticalSpace(50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
            ),
            onPressed: () {
              Scrollable.ensureVisible(
                GlobalKeys.letsTalkKey.currentContext!,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Let’s Talk',
              style: TextStyles.font24WhiteMedium,
            ),
          )
        ],
      ),
    );
  }
}
