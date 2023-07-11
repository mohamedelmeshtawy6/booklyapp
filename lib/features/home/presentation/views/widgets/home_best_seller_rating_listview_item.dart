import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBestSellerRatingListviewItem extends StatelessWidget {
  const HomeBestSellerRatingListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '(214)',
          style: Styles.textStyle14.copyWith(color: kgreyColor),
        )
      ],
    );
  }
}
