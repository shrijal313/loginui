import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f0fd),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(90),
                          bottomRight: Radius.circular(90),
                        ),
                      ),
                      child: Image.asset("assets/images/boy.png",)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
