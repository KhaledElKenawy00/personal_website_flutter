import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MobileMyImage extends StatefulWidget {
  const MobileMyImage({super.key});

  @override
  State<MobileMyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MobileMyImage> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const Spacer(),
          MouseRegion(
            onEnter: (_) => setState(() => _isHovering = true),
            onExit: (_) => setState(() => _isHovering = false),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SimpleShadow(
                  opacity: 1,
                  color: const Color(0xFFAC6AFF),
                  offset: const Offset(0, 10),
                  sigma: 10,
                  child: Image(
                    width: 450.w,
                    height: 250.h,
                    image: const AssetImage('assets/images/me.png'),
                  ),
                ),
                Image(
                  width: 550.w,
                  height: 250.h,
                  image: const AssetImage('assets/images/my_image_bg.png'),
                ),
                if (_isHovering)
                  Positioned(
                    bottom: 20.h,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 12.w),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Text(
                        'يسطى متدوسش عليا',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
