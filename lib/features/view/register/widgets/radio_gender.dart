import 'package:flutter/material.dart';

import '../gender.dart';

class RadioGender extends StatefulWidget {
  RadioGender({
    Key key,
    this.gender,
  }) : super(key: key);
  Gender gender;
  @override
  _RadioGenderState createState() => _RadioGenderState();
}

class _RadioGenderState extends State<RadioGender> {
  bool isMale = true;
  bool isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
}
