import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class SingleHobby extends StatelessWidget {
  final Color hobbyContainerColor;
  final String hobbyIcon;
  final String hobbyName;
  final Color shadowColor;
  const SingleHobby({
    super.key,
    required this.hobbyContainerColor,
    required this.hobbyIcon,
    required this.hobbyName,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 170.h,
      decoration: BoxDecoration(
        color: hobbyContainerColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.5),
            blurRadius: 90,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          hobbyIcon.contains('svg') == true
              ? SvgPicture.asset(
                  hobbyIcon,
                  width: 80.w,
                  height: 80.h,
                )
              : Image.asset(
                  hobbyIcon,
                  width: 80.w,
                  height: 80.h,
                ),
          verticalSpace(10),
          Text(
            hobbyName,
            style: TextStyles.font18BlackMedium,
          ),
        ],
      ),
    );
  }
}