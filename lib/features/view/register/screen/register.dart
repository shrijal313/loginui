import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/core/profile.dart';
import 'package:practice1/core/widgets/alt_sign_up.dart';
import 'package:practice1/core/widgets/continue_button.dart';
import 'package:practice1/features/view/login/widgets/header.dart';
import 'package:practice1/features/view/login/widgets/welcomeText.dart';
import 'package:practice1/features/view/register/widgets/radio_gender.dart';

import '../gender.dart';

class Register extends StatelessWidget {
  final Profile profile;

  Register.tutor({
    Key key,
    this.profile = Profile.tutor,
  });

  Register.guardian({
    Key key,
    this.profile = Profile.guardian,
  });

  Register.student({
    Key key,
    this.profile = Profile.student,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f0fd),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              profileHeader(profile),
              WelcomText(
                title: registerText(profile),
                subtitle: "Sign Up to Continue",
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 40,
                        spreadRadius: 10,
                        color: Colors.grey[200])
                  ],
                ),
                child: Form(
                    // key: ,
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Name",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    this.profile == Profile.tutor ? RadioGender() : SizedBox(),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "⬤",
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "⬤",
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          "I agree to ",
                        ),
                        Text(
                          "Terms of Service",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Text(
                            "Sign Up",
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
                    AltSignup()
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget profileHeader(Profile profile) {
    switch (profile) {
      case Profile.student:
        return Header.student();
      case Profile.guardian:
        return Header.guardian();
      case Profile.tutor:
        return Header.tutor();

      default:
        return Header.student();
    }
  }

  String registerText(Profile profile) {
    switch (profile) {
      case Profile.student:
        return "Register as a Student";
      case Profile.guardian:
        return "Register as a Guardian";
      case Profile.tutor:
        return "Register as a Tutor";

      default:
        return "Register as a Student";
    }
  }
}
