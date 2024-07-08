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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            openDialog(context);
          }, child: Text("Show dialog"), ),
          ElevatedButton(onPressed: () {
            openBottomSheet(context);
          }, child: Text("Show bottom sheet"), ),
        ],
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Title"),
        content: Text("Content"),
        actions: [
          TextButton(onPressed: () {}, child: Text("Button 1")),
          TextButton(onPressed: () {}, child: Text("Button 2")),
        ],
      ),
    );
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        barrierColor: Colors.cyanAccent,
        context: context,
        builder: (context) => Container(
          width: double.infinity,
          child: Column(
            children: [
              Text("Hello"),
              Text("Hello Kitty"),
              Text("Hello Baby")
            ],
          ),
        ));
  }
}
