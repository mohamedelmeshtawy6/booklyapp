import 'package:booklyapp/features/home/presentation/views/widgets/custom_listview_imageItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewImages extends StatelessWidget {
  const ListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 194.h,
        child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemBuilder: (c, index) => const CustomListViewImageItem()));
  }
}
