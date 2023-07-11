import 'package:booklyapp/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsButtonsAction extends StatelessWidget {
  const DetailsButtonsAction({super.key});

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
                '99.9 E',
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
