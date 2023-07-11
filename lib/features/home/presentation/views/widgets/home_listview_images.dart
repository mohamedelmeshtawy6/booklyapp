import 'package:booklyapp/features/home/presentation/views/widgets/home_listview_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeListViewImages extends StatelessWidget {
  const HomeListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 194.h,
        child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemBuilder: (c, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: HomeListViewImageItem(),
                )));
  }
}
