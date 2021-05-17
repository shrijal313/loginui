
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 300,
        padding: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  spreadRadius: 10,
                  color: Colors.grey[200])
            ]),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset(
              "assets/images/boy.png",
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
