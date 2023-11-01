import 'package:doctor_app/models/category.dart';

class Doctor {
  final String assetName;
  final String name;
  final Category category;
  final int ratings;
  final int reviewCount;

  Doctor({
    this.assetName = "doc.webp",
    required this.name,
    required this.category,
    this.ratings = 5,
    required this.reviewCount,
  });
}
