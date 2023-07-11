import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/details_alsolike_listviw.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/details_book_information.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/details_image.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/detials_buttons_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'details_custom_appbar.dart';

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
            height: 15.h,
          ),
          const DetailsImage(),
          SizedBox(
            height: 20.h,
          ),
          const DetailsBookInformation(),
          SizedBox(
            height: 10.h,
          ),
          const DetailsButtonsAction(),
          SizedBox(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const DetailsAlsoLikeListView(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
