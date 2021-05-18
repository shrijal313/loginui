import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/core/profile.dart';
import 'package:practice1/core/widgets/alt_sign_up.dart';
import 'package:practice1/core/widgets/continue_button.dart';
import 'package:practice1/core/widgets/header.dart';
import 'package:practice1/features/view/login/widgets/welcomeText.dart';
import 'package:practice1/features/view/register/widgets/radio_gender.dart';

import '../gender.dart';

class Register extends StatefulWidget {
  Profile profile;

  Register.maleTutor({
    Key key,
    this.profile = Profile.maleTutor,
  });

  Register.femaleTutor({
    Key key,
    this.profile = Profile.femaleTutor,
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
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool isTutor = false;
    if (widget.profile == Profile.maleTutor ||
        widget.profile == Profile.femaleTutor) {
      isTutor = true;
    }
    return Scaffold(
      backgroundColor: Color(0xfff4f0fd),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              AnimatedSwitcher(
                duration: Duration(
                  milliseconds: 500,
                ),
                child: isMale
                    ? profileHeader(
                        UniqueKey(),
                        Profile.maleTutor,
                      )
                    : profileHeader(UniqueKey(), Profile.femaleTutor),
              ),
              WelcomText(
                title: registerText(widget.profile),
                subtitle: "Sign Up to Continue",
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
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
                        isTutor
                            ? Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Gender",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        animationDuration:
                                            Duration(milliseconds: 50),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        elevation: 5,
                                        primary: isMale
                                            ? Color(0xff7280dc)
                                            : Color(0xfff4f0fd),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isFemale = false;
                                          isMale = true;
                                          widget.profile = Profile.maleTutor;
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: isMale
                                            ? Color(0xff5743cb)
                                            : Color(0xffcdd4f6),
                                        child: isMale
                                            ? Icon(
                                                Icons.check,
                                                color: Colors.white,
                                              )
                                            : SizedBox(),
                                      ),
                                      label: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 05.0),
                                        child: Text(
                                          "Male",
                                          style: TextStyle(
                                              color: isMale
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        animationDuration:
                                            Duration(milliseconds: 200),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        elevation: 5,
                                        primary: isFemale
                                            ? Color(0xff7280dc)
                                            : Color(0xfff4f0fd),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isMale = false;
                                          isFemale = true;
                                          widget.profile = Profile.femaleTutor;
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: isFemale
                                            ? Color(0xff5743cb)
                                            : Color(0xffcdd4f6),
                                        child: isFemale
                                            ? Icon(
                                                Icons.check,
                                                color: Colors.white,
                                              )
                                            : SizedBox(),
                                      ),
                                      label: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: .0),
                                        child: Text(
                                          "Female",
                                          style: TextStyle(
                                              color: isFemale
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
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

  bool isMale = true;

  bool isFemale = false;

  Widget radioGender() {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Gender",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              animationDuration: Duration(milliseconds: 50),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 5,
              primary: isMale ? Color(0xff7280dc) : Color(0xfff4f0fd),
            ),
            onPressed: () {
              setState(() {
                isFemale = false;
                isMale = true;
              });
            },
            icon: CircleAvatar(
              radius: 16,
              backgroundColor: isMale ? Color(0xff5743cb) : Color(0xffcdd4f6),
              child: isMale
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : SizedBox(),
            ),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 05.0),
              child: Text(
                "Male",
                style: TextStyle(color: isMale ? Colors.white : Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              animationDuration: Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 5,
              primary: isFemale ? Color(0xff7280dc) : Color(0xfff4f0fd),
            ),
            onPressed: () {
              setState(() {
                isMale = false;
                isFemale = true;
              });
            },
            icon: CircleAvatar(
              radius: 16,
              backgroundColor: isFemale ? Color(0xff5743cb) : Color(0xffcdd4f6),
              child: isFemale
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : SizedBox(),
            ),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: .0),
              child: Text(
                "Female",
                style: TextStyle(color: isFemale ? Colors.white : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileHeader(Key key, Profile profile) {
    switch (profile) {
      case Profile.student:
        return Header.student(
          key: key,
        );
      case Profile.guardian:
        return Header.guardian(
          key: key,
        );
      case Profile.maleTutor:
        return Header.maleTutor(
          key: key,
        );
      case Profile.femaleTutor:
        return Header.femaleTutor(
          key: key,
        );

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
      case Profile.maleTutor:
        return "Register as a Tutor";
      case Profile.femaleTutor:
        return "Register as a Tutor";

      default:
        return "Register as a Student";
    }
  }
}
