import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';

class MobileLetsTalk extends StatelessWidget {
  const MobileLetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      key: GlobalKeys.letsTalkKey,
      child: Column(
        children: [
          Text(
            'Let\'s Talk',
            style: TextStyles.font64WhiteMedium,
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _launchUrl('https://www.linkedin.com/in/omarahmedx14/');
                },
                child: setupIconStack('assets/images/linkedin.png'),
              ),
              horizontalSpace(50),
              InkWell(
                onTap: () {
                  _launchUrl('https://www.instagram.com/omarahmedx14/');
                },
                child: setupIconStack('assets/images/instagram.png'),
              ),
              horizontalSpace(50),
              InkWell(
                onTap: () {
                  _launchUrl('https://www.facebook.com/omarahmedxx14');
                },
                child: setupIconStack('assets/images/facebook.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildIconBackground() {
    return Image.asset(
      'assets/images/icon_bg.png',
      width: 100.w,
      height: 100.h,
    );
  }

  setupIconStack(String iconPath) {
    return Stack(
      alignment: Alignment.center,
      children: [
        buildIconBackground(),
        Image.asset(
          iconPath,
          width: 80.w,
          height: 80.h,
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
