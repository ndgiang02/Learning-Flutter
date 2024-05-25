import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(body: Body()),
    ),
  ));
}

class Base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      child: Align(
        alignment: Alignment.center,
        child: Text('ROW'),
      ),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class BaseColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      child: Align(
        alignment: Alignment.center,
        child: Text('COLUMN'),
      ),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Base(),
              Base(),
              Base(),
            ],
          ),
          BaseColumn(),
          BaseColumn(),
        ],
      ),
    );
  }
}
