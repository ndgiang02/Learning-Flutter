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
    return Container(alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              openDatePicker(context);
            }, child: Text("datePicker")),
            ElevatedButton(onPressed: () {
              openTimePicker(context);
            }, child: Text("timePicker"))
          ],

        )
    );
  }

  void openDatePicker(BuildContext context) {
    showDatePicker(context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
    );
  }

  void openTimePicker(BuildContext context) {
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now());
  }

}
