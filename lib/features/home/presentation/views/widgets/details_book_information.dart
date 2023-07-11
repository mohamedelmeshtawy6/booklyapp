import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/fetured_rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBookInformation extends StatelessWidget {
  const DetailsBookInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 17.h,
        ),
        const FeturedRatingItem(),
      ],
    );
  }
}
