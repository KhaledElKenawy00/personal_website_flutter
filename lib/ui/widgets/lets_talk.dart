import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class LetsTalk extends StatelessWidget {
  const LetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: GlobalKeys.letsTalkKey,
      padding: EdgeInsetsDirectional.only(end: 165.w),
      child: Center(
        child: Column(
          children: [
            Text('Let\'s Talk', style: TextStyles.font36WhiteMedium),
            verticalSpace(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _launchUrl('https://www.linkedin.com/in/omarahmedx14/');
                  },
                  child: setupIconStack('assets/svgs/linkedin.svg'),
                ),
                horizontalSpace(4),
                InkWell(
                  onTap: () {
                    _launchUrl('https://www.instagram.com/omarahmedx14/');
                  },
                  child: setupIconStack('assets/svgs/instagram.svg'),
                ),
                horizontalSpace(4),
                InkWell(
                  onTap: () {
                    _launchUrl('https://www.youtube.com/@OmarAhmedx14');
                  },
                  child: setupIconStack('assets/svgs/youtube.svg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildIconBackground() {
    return Image.asset(
      'assets/images/icon_bg.png',
      width: 60.w,
      height: 60.h,
    );
  }

  setupIconStack(String iconPath) {
    return Stack(
      alignment: Alignment.center,
      children: [
        buildIconBackground(),
        SvgPicture.asset(
          iconPath,
          width: 30.w,
          height: 30.h,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
