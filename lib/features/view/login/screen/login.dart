import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/core/widgets/continue_button.dart';
import 'package:practice1/features/view/login/widgets/header.dart';
import 'package:practice1/features/view/login/widgets/welcomeText.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 10,
                ),
                // height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 40,
                          spreadRadius: 10,
                          color: Colors.grey[200])
                    ]),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: "⬤",
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              "Sign in",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  // letterSpacing: 1,
                                ),
                              ),
                            ),
                            Spacer(),
                            ContinueButton(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Or login using "),
                      Row(
                        children: [
                          IconButton(
                            icon: Image.asset("assets/icons/googleLogo.png"),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset("assets/icons/facebookLogo.png"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0,
                                ),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Your Password?",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0,
                                ),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
