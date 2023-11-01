import 'package:doctor_app/res/colors.dart';
import 'package:doctor_app/res/dimens.dart';
import 'package:doctor_app/res/text.dart';
import 'package:doctor_app/widgets/search_box.dart';
import 'package:doctor_app/widgets/upcoming_schedule.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TopCardSection extends StatelessWidget {
  const TopCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimensions.baseSize * 2.5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grayBg,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDimensions.vSpace(3),
          appbar(),
          AppDimensions.vSpace(3),
          Text(
            "How are you feeling\ntoday?",
            style: AppTexts.headlineLarge
                .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          AppDimensions.vSpace(3),
          const SearchBox(),
          AppDimensions.vSpace(3),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Upcoming Schedule',
                        style: AppTexts.title
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      AppDimensions.hSpace(1),
                      const CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.redAccent,
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'View all',
                    style: AppTexts.subtitle
                        .copyWith(color: AppColors.secondaryGray),
                  ),
                ],
              ),
              AppDimensions.vSpace(2),
              const UpcomingScheduleCard()
            ],
          ),
          AppDimensions.vSpace(1),
        ],
      ),
    );
  }

  Row appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/female.avif"),
            ),
            AppDimensions.hSpace(1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: AppTexts.subtitle2
                      .copyWith(color: AppColors.secondaryGray),
                ),
                Text(
                  "Gwen Stacy",
                  style: AppTexts.title.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
        const CircleAvatar(
          radius: 20,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          child: Icon(
            Iconsax.notification,
            size: 20,
          ),
        )
      ],
    );
  }
}
