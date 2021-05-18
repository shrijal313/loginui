import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/core/widgets/continue_button.dart';
import 'package:practice1/core/widgets/header.dart';
import 'package:practice1/features/view/login/widgets/login_form.dart';
import 'package:practice1/features/view/login/widgets/welcomeText.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f0fd),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Header.student(),
                    WelcomText(
                      title: "Welcome Back",
                      subtitle: "Sign in to Continue",
                    ),
                  ],
                ),
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
