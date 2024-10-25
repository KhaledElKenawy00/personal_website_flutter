import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import 'mobile_single_hobby.dart';

class MobileHobbiesPage extends StatelessWidget {
  const MobileHobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: GlobalKeys.hobbiesKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hobbies',
          style: TextStyles.font64WhiteRegular,
        ),
        verticalSpace(4),
        Divider(
          color: ColorsManager.deepskyBlue,
          thickness: 2,
          endIndent: 1100.w,
        ),
        verticalSpace(20),
        Text(
          'What I love to do in my free time',
          textAlign: TextAlign.start,
          style: TextStyles.font60WhiteBold,
        ),
        verticalSpace(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MobileSingleHobby(
              hobbyContainerColor: ColorsManager.midnightBlue,
              hobbyIcon: 'assets/svgs/gym.svg',
              hobbyName: 'Gym',
              shadowColor: ColorsManager.warmYellow,
            ),
            horizontalSpace(80),
            const MobileSingleHobby(
              hobbyContainerColor: ColorsManager.mutedCoral,
              hobbyIcon: 'assets/images/killua.png',
              hobbyName: 'Anime',
              shadowColor: ColorsManager.warmYellow,
              iconHeight: 130,
              iconWidth: 130,
            ),
            horizontalSpace(80),
            const MobileSingleHobby(
              hobbyContainerColor: ColorsManager.midnightBlue,
              hobbyIcon: 'assets/svgs/football.svg',
              hobbyName: 'Football',
              shadowColor: ColorsManager.dustyRose,
              iconHeight: 70,
              iconWidth: 70,
            ),
          ],
        ),
        verticalSpace(50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MobileSingleHobby(
              hobbyContainerColor: ColorsManager.mutedCoral,
              hobbyIcon: 'assets/images/yasuo.png',
              hobbyName: 'Gaming',
              shadowColor: ColorsManager.mossGreen,
              iconWidth: 150,
              iconHeight: 150,
            ),
            horizontalSpace(80),
            const MobileSingleHobby(
              hobbyContainerColor: ColorsManager.midnightBlue,
              hobbyIcon: 'assets/svgs/youtube.svg',
              hobbyName: 'Content',
              shadowColor: ColorsManager.steelGray,
            ),
          ],
        ),
      ],
    );
  }
}
