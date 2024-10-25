import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class MobilePortfolioPage extends StatelessWidget {
  const MobilePortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: GlobalKeys.portfolioKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Portfolio',
          style: TextStyles.font64WhiteRegular,
        ),
        verticalSpace(4),
        Divider(
          color: ColorsManager.mainPurple,
          thickness: 2,
          endIndent: 1100.w,
        ),
        verticalSpace(20),
        Row(
          children: [
            Text(
              'My Latest Projects',
              textAlign: TextAlign.start,
              style: TextStyles.font60WhiteBold,
            ),
          ],
        ),
        verticalSpace(40),
        Container(
          width: double.infinity,
          height: 300.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: const DecorationImage(
              image: AssetImage('assets/images/sahseh_android.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        verticalSpace(30),
        Container(
          width: double.infinity,
          height: 300.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: const DecorationImage(
              image: AssetImage('assets/images/yassir_android.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
