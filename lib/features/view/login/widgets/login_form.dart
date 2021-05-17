import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/core/widgets/alt_sign_up.dart';
import 'package:practice1/core/widgets/continue_button.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key key,
  });

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            BoxShadow(blurRadius: 40, spreadRadius: 10, color: Colors.grey[200])
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
            AltSignup(),
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
    );
  }
}
