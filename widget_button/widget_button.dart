import 'package:flutter/material.dart';

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
    return Center(
      child: ElevatedButton.icon( ///
        onPressed: () {
          print("Hello");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
          shadowColor: Colors.green,
          foregroundColor: Colors.orange,
        ),
        icon: Text("Icon Button"),
        label: Icon(Icons.add_a_photo, size: 24),
      ),
    );
  }
}
