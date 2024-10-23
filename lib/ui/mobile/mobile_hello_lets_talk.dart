import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class MobileHelloLetsTalk extends StatelessWidget {
  const MobileHelloLetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: GlobalKeys.aboutKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello,',
          style: TextStyles.font52WhiteMedium,
        ),
        Text(
          'Omar Ahmed',
          style: TextStyles.font80WhiteBold,
        ),
        verticalSpace(4),
        Text(
          'Mobile Tech Lead',
          style: TextStyles.font52LightgreyRegular,
        ),
        verticalSpace(50),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManager.mainPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
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
            style: TextStyles.font48WhiteMedium,
          ),
        )
      ],
    );
  }
}
