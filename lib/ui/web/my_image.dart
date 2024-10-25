import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 170.h, end: 170.w),
      child: Row(
        children: [
          const Spacer(),
          SimpleShadow(
            opacity: 1,
            color: const Color(0xFFAC6AFF),
            offset: const Offset(0, 10),
            sigma: 10,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: SvgPicture.asset('assets/svgs/khaled.svg')),
          ),
        ],
      ),
    );
  }
}
