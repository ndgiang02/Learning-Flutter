import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Image.asset('assets/images/demo.jpg', width: 100, fit: BoxFit.fitWidth),
        ClipOval(
          child: Image.asset(
            'assets/images/test.jpg',
            width: 100,
            fit: BoxFit.fitWidth,
          ),
        ),
        SvgPicture.asset(
          "assets/images/home.svg",
          width: 100,
          fit: BoxFit.fitWidth,
        ),
      ]),
    );
  }
}
