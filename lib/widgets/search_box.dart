import 'package:doctor_app/res/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.baseSize * 2),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Icon(CupertinoIcons.search),
          AppDimensions.hSpace(1),
          const Flexible(
              child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: 'Search here',
              border: InputBorder.none,
            ),
          ))
        ],
      ),
    );
  }
}
