import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/feture_listview_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/listview-images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomizeAppBar(),
          const ListViewImages(),
          SizedBox(
            height: 51.sp,
          ),
          Text(
            'Best Seller',
            style: Styles.meduimText,
          )
        ],
      ),
    );
  }
}
