import 'package:booklyapp/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsAlsoLikeListViewItem extends StatelessWidget {
  const DetailsAlsoLikeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124.h,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsPath.testBook))),
        ),
      ),
    );
  }
}
