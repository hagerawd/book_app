import 'package:book_app/constants.dart';
import 'package:book_app/core/Utlis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor
      ,textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ),

    );


  }
}



