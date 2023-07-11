import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/assets.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/fetured_rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBestSellerLiseViewItem extends StatelessWidget {
  HomeBestSellerLiseViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
          height: 120.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AssetsPath.testBook))),
                ),
              ),
              SizedBox(
                width: 29.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // width: double.infinity,
                      child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Styles.textStyle20
                              .copyWith(fontFamily: Styles.kgtsFont),
                          'Hary Potter And The goblet Of Fire'),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'J.k Rolling',
                      style: Styles.textStyle14.copyWith(
                          color: kgreyColor, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            '99.9\$',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          const FeturedRatingItem()
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
