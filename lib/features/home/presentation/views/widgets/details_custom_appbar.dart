import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 38.h, bottom: 20.h),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
              ))
        ],
      ),
    );
  }
}
