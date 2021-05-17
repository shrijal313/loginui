import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomText extends StatelessWidget {
  const WelcomText({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              letterSpacing: 1,
            )),
          )
        ],
      ),
    );
  }
}
