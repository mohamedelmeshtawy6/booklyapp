import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeCustomizeAppBar extends StatelessWidget {
  const HomeCustomizeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 48.h, bottom: 30.h),
      child: Row(
        children: [
          SvgPicture.asset(AssetsPath.logo),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.ksearchView);
              },
              icon: const Opacity(
                  opacity: .6, child: Icon(FontAwesomeIcons.magnifyingGlass)))
        ],
      ),
    );
  }
}
