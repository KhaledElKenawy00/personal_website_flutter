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
    return Column(
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
          endIndent: 1225.w,
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
                  'New demos are continually added and buying a\nsingle license for Mak gives you access to all of\nwhat\'s shown below, plus everything that will be\nadded in the future.',
            ),
            horizontalSpace(50),
            const MySkills(
              image: 'assets/images/mobile.png',
              title: 'Brand Design',
              description:
                  'New demos are continually added and buying a\nsingle license for Mak gives you access to all of\nwhat\'s shown below, plus everything that will be\nadded in the future.',
            ),
            horizontalSpace(50),
            const MySkills(
              image: 'assets/images/mobile.png',
              title: 'Brand Design',
              description:
                  'New demos are continually added and buying a\nsingle license for Mak gives you access to all of\nwhat\'s shown below, plus everything that will be\nadded in the future.',
            ),
          ],
        ),
      ],
    );
  }
}
