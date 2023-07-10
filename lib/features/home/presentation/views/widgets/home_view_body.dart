import 'package:booklyapp/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_listview_imageItem.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/listview-images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomizeAppBar(), ListViewImages()],
    );
  }
}
