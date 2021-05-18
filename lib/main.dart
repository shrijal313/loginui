import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/features/view/firstPage.dart';
import 'package:practice1/features/view/login/screen/login.dart';
import 'package:practice1/features/view/register/screen/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up and Sign In',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: FirstPage(),
    );
  }
}
