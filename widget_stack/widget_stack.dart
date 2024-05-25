import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
          body: Center(
            child: Body(),
          )),
    ),
  ));
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 400,
      height: 500,
      color: Colors.grey,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.greenAccent,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
