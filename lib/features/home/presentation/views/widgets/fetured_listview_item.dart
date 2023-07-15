// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/assets.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/fetured_rating_item.dart';

class FeturedLiseViewItem extends StatelessWidget {
  final BookModel? books;
  const FeturedLiseViewItem({
    Key? key,
    this.books,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: SizedBox(
          height: 150.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: books == null
                              ? AssetImage(AssetsPath.testBook)
                              : NetworkImage(
                                      books!.volumeInfo!.imageLinks!.thumbnail!)
                                  as ImageProvider)),
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
                          '${books!.volumeInfo!.title}'),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '${books!.volumeInfo!.authors![0]}',
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
                            style: Styles.textStyle14
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
