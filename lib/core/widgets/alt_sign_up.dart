import 'package:flutter/material.dart';

class AltSignup extends StatelessWidget {
  const AltSignup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
