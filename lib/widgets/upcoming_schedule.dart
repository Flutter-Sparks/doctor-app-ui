import 'package:doctor_app/res/colors.dart';
import 'package:doctor_app/res/dimens.dart';
import 'package:doctor_app/res/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class UpcomingScheduleCard extends StatelessWidget {
  const UpcomingScheduleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppDimensions.baseSize * 2),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          //doctor details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage("assets/female.avif"),
                  ),
                  AppDimensions.hSpace(1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr Jennifer Fernando",
                        style: AppTexts.title.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Psychologist",
                        style: AppTexts.subtitle.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              // call button
              const CircleAvatar(
                radius: 17,
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                child: Icon(
                  Iconsax.call,
                  size: 15,
                ),
              )
            ],
          ),
          AppDimensions.vSpace(2),
          // date and time
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppDimensions.baseSize * 2),
            decoration: BoxDecoration(
              color: AppColors.blueStrong,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Iconsax.calendar,
                      color: Colors.white,
                      size: 15.w,
                    ),
                    AppDimensions.hSpace(1),
                    Text(
                      "23 October 2023",
                      style: AppTexts.subtitle.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.clock,
                      color: Colors.white,
                      size: 15.w,
                    ),
                    AppDimensions.hSpace(1),
                    Text(
                      "12.35 - 13.45",
                      style: AppTexts.subtitle.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
