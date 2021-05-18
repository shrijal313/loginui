import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice1/features/view/login/screen/login.dart';
import 'package:practice1/features/view/register/screen/register.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    animatedLetters();
  }

  List<String> _items = [];
  void displayLetter() {
    // for (var i = 0; i < items.length; i++) {

    final int _index = _items.length;
    if (_index == items.length) {
      timer.cancel();
      return;
    }
    _items.insert(_index, items[_index]);
    listKey.currentState
        .insertItem(_index, duration: const Duration(milliseconds: 500));

    // }
  }

  Timer timer;
  animatedLetters() {
    timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      displayLetter();
    });
  }

  /// Will used to access the Animated list
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  /// This holds the items
  List<String> items = ["H", "E", "L", "L", "O", " ", "W", "O", 'R', "L", "D"];

  Widget slideLetter(BuildContext context, int index, animation) {
    String item = _items[index];
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-.2, 0),
        end: Offset(0, 0),
      ).animate(animation),
      child: Center(
        child: BlockLetter(
          letter: item,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f0fd),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: displayLetter,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedList(
                key: listKey,
                scrollDirection: Axis.horizontal,
                initialItemCount: _items.length,
                itemBuilder: (context, index, animation) =>
                    slideLetter(context, index, animation),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlockLetter(
                    letter: "H",
                  ),
                  BlockLetter(
                    letter: "E",
                  ),
                  BlockLetter(
                    letter: "L",
                  ),
                  BlockLetter(
                    letter: "L",
                  ),
                  BlockLetter(
                    letter: "O",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  BlockLetter(
                    letter: "W",
                  ),
                  BlockLetter(
                    letter: "O",
                  ),
                  BlockLetter(
                    letter: "R",
                  ),
                  BlockLetter(
                    letter: "L",
                  ),
                  BlockLetter(
                    letter: "D",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlockLetter(
                    letter: "H",
                  ),
                  BlockLetter(
                    letter: "E",
                  ),
                  BlockLetter(
                    letter: "L",
                  ),
                  BlockLetter(
                    letter: "L",
                  ),
                  BlockLetter(
                    letter: "O",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  BlockLetter(
                    letter: "W",
                  ),
                  BlockLetter(
                    letter: "O",
                  ),
                  BlockLetter(
                    letter: "R",
                  ),
                  BlockLetter(
                    letter: "L",
                  ),
                  BlockLetter(
                    letter: "D",
                  ),
                ],
              ),
            ),
            Navigate(
              to: Register.guardian(),
              page: "Register as Guardian",
            ),
            Navigate(
              to: Register.maleTutor(),
              page: "Register as Tutor",
            ),
            Navigate(
              to: Register.student(),
              page: "Register as Student",
            ),
            Navigate(
              to: LoginScreen(),
              page: "Login",
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class BlockLetter extends StatelessWidget {
  final String letter;
  const BlockLetter({
    Key key,
    this.letter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(letter,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: Colors.grey[800],
              fontSize: 40,
              fontWeight: FontWeight.w600,
              letterSpacing: 1),
        ));
  }
}

class Navigate extends StatelessWidget {
  final String page;
  final Widget to;
  const Navigate({
    Key key,
    this.to,
    this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Ink(
        width: 200, height: 50,
        // padding: EdgeInsets.symmetric(horizontal: 40, /vertical: 15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff7186d3), Color(0xff5700c9)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0)),
        child: Center(
          child: TextButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return to;
              }));
            },
            child: Text(
              page,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
