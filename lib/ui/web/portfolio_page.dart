import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 165.w),
      child: Column(
        key: GlobalKeys.portfolioKey,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio',
            style: TextStyles.font18WhiteRegular,
          ),
          verticalSpace(4),
          Divider(
            color: ColorsManager.mainPurple,
            thickness: 2,
            endIndent: 1055.w,
          ),
          verticalSpace(20),
          Row(
            children: [
              Text(
                'My Latest Projects',
                textAlign: TextAlign.start,
                style: TextStyles.font36WhiteBold,
              ),
            ],
          ),
          verticalSpace(100),
          Row(
            children: [
              Container(
                width: 540.w,
                height: 427.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/sahseh_android.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              horizontalSpace(30),
              Container(
                width: 540.w,
                height: 427.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/yassir_android.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
