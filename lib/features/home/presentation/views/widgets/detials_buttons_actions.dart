// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:booklyapp/core/styles.dart';

import '../../../data/model/book_model/book_model.dart';

class DetailsButtonsAction extends StatelessWidget {
  const DetailsButtonsAction({
    Key? key,
    required this.booModel,
  }) : super(key: key);
  final BookModel booModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: RawMaterialButton(
              padding: EdgeInsets.symmetric(vertical: 7.h),

              onPressed: () {},
              child: Text(
                'Free',
                style: Styles.textStyle16
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              //  shape: Border.fromBorderSide(BorderSide.none),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: RawMaterialButton(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              onPressed: () {},
              child: Text('Free preview',
                  style: GoogleFonts.glory(fontWeight: FontWeight.bold)),
            ),
          ),
        )
      ],
    );
  }
}
