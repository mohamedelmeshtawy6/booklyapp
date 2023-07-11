import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/details_image.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/fetured_rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'datails_custom_appBar.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DetailsCustomAppBar(),
          SizedBox(
            height: 33.h,
          ),
          const DetailsImage(),
          SizedBox(
            height: 35.h,
          ),
        ],
      ),
    );
  }
}
