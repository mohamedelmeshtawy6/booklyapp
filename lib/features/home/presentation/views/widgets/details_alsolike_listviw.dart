import 'package:booklyapp/features/home/presentation/views/widgets/details_also_like_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsAlsoLikeListView extends StatelessWidget {
  const DetailsAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 6.w),
                child: const DetailsAlsoLikeListViewItem(),
              )),
    );
  }
}
