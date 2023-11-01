import 'package:doctor_app/res/colors.dart';
import 'package:doctor_app/res/dimens.dart';
import 'package:doctor_app/widgets/find_doctor.dart';
import 'package:doctor_app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Poppins"),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.save_2),
            label: "Visits",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.activity),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: "Profile",
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.baseSize * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopCardSection(),
              AppDimensions.vSpace(2),
              const FindDoctor(),
            ],
          ),
        ),
      ),
    );
  }
}
