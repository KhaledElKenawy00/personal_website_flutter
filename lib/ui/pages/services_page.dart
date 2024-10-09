import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../widgets/my_skills.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 165.w),
      child: Column(
        key: GlobalKeys.servicesKey,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services',
            style: TextStyles.font18WhiteRegular,
          ),
          verticalSpace(4),
          Divider(
            color: ColorsManager.mainPurple,
            thickness: 2,
            endIndent: 1060.w,
          ),
          verticalSpace(20),
          Text(
            'What actually\nI love to do',
            textAlign: TextAlign.start,
            style: TextStyles.font36WhiteBold,
          ),
          verticalSpace(100),
          Row(
            children: [
              const MySkills(
                image: 'assets/images/mobile.png',
                title: 'Mobile Development',
                description:
                    'Leading mobile teams to make strong,\nhigh-performing apps that drive user\nengagement, Build with confidence\nusing cutting-edge tools and strategies.',
              ),
              horizontalSpace(100),
              const MySkills(
                image: 'assets/images/mobile.png',
                title: 'Project Management',
                description:
                    'Organize and execute your projects with\nprecision using our advanced management\nsolutions, From planning to delivery,\nstreamline every aspect of your workflow.',
              ),
              horizontalSpace(100),
              const MySkills(
                image: 'assets/images/mobile.png',
                title: 'Teaching',
                description:
                    'I love teaching people stuff, I have\nbeen teaching for more than 7 years now\nand I love it, I make content on youTube\nonly and my content is free.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
