import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MobileMyImage extends StatelessWidget {
  const MobileMyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              child: Image(
                width: 500.w,
                height: 250.h,
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/joker.jpeg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
