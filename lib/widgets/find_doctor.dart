import 'package:doctor_app/models/category.dart';
import 'package:doctor_app/models/doctor.dart';
import 'package:doctor_app/res/colors.dart';
import 'package:doctor_app/res/dimens.dart';
import 'package:doctor_app/res/text.dart';
import 'package:doctor_app/widgets/doctor/doctor.dart';

import 'package:flutter/material.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({
    super.key,
  });

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  List<Category> categories = [
    Category(1, "Cardiologist"),
    Category(2, "Psychiatrist"),
    Category(3, "Dermatologist"),
    Category(4, "Pediatrician"),
    Category(5, "Orthopedic Surgeon"),
    Category(6, "Ophthalmologist"),
    Category(7, "Gynecologist"),
    Category(8, "Urologist"),
    Category(9, "Neurologist"),
    Category(10, "ENT Specialist"),
  ];
  int selectedIndex = 0;

  List<Doctor> doctors = [
    Doctor(
        name: "Dr. John Smith",
        category: Category(1, "Cardiologist"),
        reviewCount: 20),
    Doctor(
        name: "Dr. Sarah Johnson",
        category: Category(2, "Psychiatrist"),
        reviewCount: 15),
    Doctor(
        name: "Dr. Lisa Williams",
        category: Category(3, "Dermatologist"),
        reviewCount: 30),
    Doctor(
        name: "Dr. James Brown",
        category: Category(4, "Pediatrician"),
        reviewCount: 25),
    Doctor(
        name: "Dr. Emily Davis",
        category: Category(5, "Orthopedic Surgeon"),
        reviewCount: 35),
    Doctor(
        name: "Dr. Michael Wilson",
        category: Category(6, "Ophthalmologist"),
        reviewCount: 10),
    Doctor(
        name: "Dr. Maria Garcia",
        category: Category(7, "Gynecologist"),
        reviewCount: 40),
    Doctor(
        name: "Dr. Robert Martinez",
        category: Category(8, "Urologist"),
        reviewCount: 22),
    Doctor(
        name: "Dr. William Turner",
        category: Category(9, "Neurologist"),
        reviewCount: 18),
    Doctor(
        name: "Dr. Linda Adams",
        category: Category(10, "ENT Specialist"),
        reviewCount: 28),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Find your doctor',
              style: AppTexts.title.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'See all',
              style: AppTexts.subtitle.copyWith(color: AppColors.secondaryGray),
            ),
          ],
        ),
        AppDimensions.vSpace(2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            categories.length,
            (index) =>
                category(categories[index], index, selectedIndex == index),
          ).toList()),
        ),
        AppDimensions.vSpace(2),
        Column(
          children: doctors.map((e) =>  DoctorWidget(doctor: e)).toList(),
        ),
      ],
    );
  }

  Widget category(Category category, int index, bool activate) {
    return Padding(
      padding: EdgeInsets.only(right: AppDimensions.baseSize),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Chip(
          backgroundColor: activate
              ? AppColors.blue.withOpacity(0.1)
              : AppColors.secondaryGray.withOpacity(0.06),
          label: Text(
            category.text,
            style: AppTexts.subtitle.copyWith(
                color: activate ? AppColors.blue : AppColors.secondaryGray),
          ),
        ),
      ),
    );
  }
}
