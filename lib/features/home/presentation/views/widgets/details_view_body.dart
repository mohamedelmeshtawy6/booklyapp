// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/details_similar_like_listviw.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/details_book_information.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/detials_buttons_actions.dart';

import '../../../data/model/book_model/book_model.dart';
import 'details_custom_appbar.dart';
import 'fetured_image_item.dart';

class DetailsViewBody extends StatelessWidget {
  final BookModel bookModel;

  DetailsViewBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DetailsCustomAppBar(),
          SizedBox(
              height: 243.h,
              child: FeturedImageItem(
                  url: bookModel.volumeInfo?.imageLinks?.thumbnail,
                  aspectRatio: 2.6 / 4)),
          SizedBox(
            height: 20.h,
          ),
          DetailsBookInformation(book: bookModel),
          SizedBox(
            height: 10.h,
          ),
          DetailsButtonsAction(booModel: bookModel),
          SizedBox(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can See Similar like',
              style: Styles.textStyle14,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          DetailsSimilarLikeListView(bookModel: bookModel),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
