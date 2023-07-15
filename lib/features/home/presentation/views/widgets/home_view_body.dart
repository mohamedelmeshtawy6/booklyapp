import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/home_best_seller_listview.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/home_custom_appbar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/home_listview_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: const HomeCustomizeAppBar(),
              ),
              const HomeListViewImages(),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const HomeBestSellerListView(),
          ),
        )
      ],
    );
  }
}
