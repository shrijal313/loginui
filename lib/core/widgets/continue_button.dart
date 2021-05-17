import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {},

        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(80.0)),
        // padding: EdgeInsets.all(0.0),

        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff7186d3), Color(0xff5700c9)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
              constraints: BoxConstraints(maxWidth: 75.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Icon(Icons.arrow_forward_outlined)),
        ),
      ),
    );
  }
}
