import 'package:flutter/material.dart';
import 'package:practice1/features/view/login/widgets/header.dart';

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
                  Header.student(),
                  Container(
                    width: double.infinity,
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text("Welcome back", ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
