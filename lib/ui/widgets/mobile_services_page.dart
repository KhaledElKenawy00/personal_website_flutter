import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_my_skills.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class MobileServicesPage extends StatelessWidget {
  const MobileServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: GlobalKeys.servicesKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: TextStyles.font64WhiteRegular,
        ),
        Divider(
          color: ColorsManager.mainPurple,
          thickness: 2,
          endIndent: 1100.w,
        ),
        verticalSpace(20),
        Text(
          'What actually I love to do',
          textAlign: TextAlign.start,
          style: TextStyles.font48WhiteBold,
        ),
        verticalSpace(70),
        const MobileMySkills(
          image: 'assets/images/mobile.png',
          title: 'Mobile Development',
          description:
              'Leading mobile teams to make strong,\nhigh-performing apps that drive user\nengagement, Build with confidence\nusing cutting-edge tools and strategies.',
        ),
        verticalSpace(50),
        const MobileMySkills(
          image: 'assets/images/mobile.png',
          title: 'Project Management',
          description:
              'Organize and execute your projects with\nprecision using our advanced management\nsolutions, From planning to delivery,\nstreamline every aspect of your workflow.',
        ),
        verticalSpace(50),
        const MobileMySkills(
          image: 'assets/images/mobile.png',
          title: 'Teaching',
          description:
              'I love teaching people stuff, I have\nbeen teaching for more than 7 years now\nand I love it, I make content on youTube\nonly and my content is free.',
        ),
      ],
    );
  }
}
