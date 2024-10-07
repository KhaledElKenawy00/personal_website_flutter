import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website_flutter/ui/widgets/single_hobby.dart';

import '../../core/helpers/global_keys.dart';
import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 165.w),
      child: Column(
        key: GlobalKeys.hobbiesKey,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hobbies',
            style: TextStyles.font18WhiteRegular,
          ),
          verticalSpace(4),
          Divider(
            color: ColorsManager.mainPurple,
            thickness: 2,
            endIndent: 1055.w,
          ),
          verticalSpace(20),
          Text(
            'What I love to do in my free time',
            textAlign: TextAlign.start,
            style: TextStyles.font36WhiteBold,
          ),
          verticalSpace(100),
          Row(
            children: [
              const SingleHobby(
                hobbyContainerColor: ColorsManager.lightPink,
                hobbyIcon: 'assets/svgs/gym.svg',
                hobbyName: 'Gym',
                shadowColor: ColorsManager.pink,
              ),
              horizontalSpace(50),
              const SingleHobby(
                hobbyContainerColor: ColorsManager.lightGreen,
                hobbyIcon: 'assets/images/anime.jpg',
                hobbyName: 'Anime',
                shadowColor: ColorsManager.green,
              ),
              horizontalSpace(50),
              const SingleHobby(
                hobbyContainerColor: ColorsManager.lightBlue,
                hobbyIcon: 'assets/svgs/football.svg',
                hobbyName: 'Football',
                shadowColor: ColorsManager.pink,
              ),
              horizontalSpace(50),
              const SingleHobby(
                hobbyContainerColor: ColorsManager.lightBlue,
                hobbyIcon: 'assets/images/yasuo.png',
                hobbyName: 'Gaming',
                shadowColor: ColorsManager.pink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
