import 'package:bookly_app/Features/Splash/presentaion/view_models/views/splash_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return 
    GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor:kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home:const  SplashView(),
    );
  }
    );
}
}