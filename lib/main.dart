import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/view_models/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(debugShowCheckedModeBanner: false,
        theme:ThemeData.dark().copyWith(
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor:KprimaryColor
      ) ,
      home:SplashView()
    );
  }
}