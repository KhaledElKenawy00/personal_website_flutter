import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  image: const AssetImage('assets/images/my_image.png'),
                ),
              ),
              Image(
                width: 750.w,
                height: 750.h,
                image: const AssetImage('assets/images/my_image_bg.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
