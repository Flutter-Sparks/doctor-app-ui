import 'package:flutter/material.dart';

import 'package:doctor_app/models/doctor.dart';
import 'package:doctor_app/res/colors.dart';
import 'package:doctor_app/res/dimens.dart';
import 'package:doctor_app/res/text.dart';

class DoctorWidget extends StatelessWidget {
  final Doctor doctor;
  const DoctorWidget({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.baseSize),
      child: Container(
        padding: EdgeInsets.all(AppDimensions.baseSize * 2),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage(
                  'assets/${doctor.assetName}',
                ),
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
            AppDimensions.hSpace(2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Chip(
                  backgroundColor: AppColors.blue.withOpacity(0.04),
                  label: Row(
                    children: [
                      Icon(
                        Icons.verified,
                        size: 17,
                        color: AppColors.blue,
                      ),
                      AppDimensions.hSpace(1),
                      Text(
                        'Professional Doctor',
                        style:
                            AppTexts.subtitle.copyWith(color: AppColors.blue),
                      ),
                    ],
                  ),
                ),
                Text(
                  doctor.name,
                  style: AppTexts.title.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  doctor.category.text,
                  style: AppTexts.subtitle
                      .copyWith(color: AppColors.secondaryGray),
                ),
                AppDimensions.vSpace(1),
                Row(
                  children: [
                    Row(
                      children: [
                        ...List.generate(
                            doctor.ratings,
                            (index) => const Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 14,
                                )),
                      ],
                    ),
                    AppDimensions.hSpace(2),
                    Text(
                      "${doctor.reviewCount} Reviews",
                      style: AppTexts.subtitle2
                          .copyWith(color: AppColors.secondaryGray),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
