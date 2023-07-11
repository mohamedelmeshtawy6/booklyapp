import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/app_router.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp.router(
              routerConfig: AppRouter.route,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                  scaffoldBackgroundColor: kprimaryColor,
                  textTheme: GoogleFonts.montserratTextTheme(
                      ThemeData.dark().textTheme)),
            ));
  }
}
