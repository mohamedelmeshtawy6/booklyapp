import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'constants.dart';
import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark()
                  .copyWith(scaffoldBackgroundColor: kprimaryColor),
              home: const SplashView(),
            ));
  }
}
