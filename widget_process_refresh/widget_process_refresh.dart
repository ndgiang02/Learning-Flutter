import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body1(),
        ),
      ),
    ),
  );
}

class Body1 extends StatefulWidget {
  const Body1({super.key});

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: 20,
                ),
                CircularProgressIndicator(),
                Container(
                  height: 20,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  value: 0.6,
                ),
                Container(
                  height: 30,
                ),
                Container(
                  height: 20,
                  color: Colors.black,
                ),
                LinearProgressIndicator(),
                Slider(
                  value: sliderValue,
                  min: 0,
                  max: 2,
                  label: sliderValue.toString(),
                  divisions: 10,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
                RangeSlider(
                  values: RangeValues(0.2, 0.7),
                  onChanged: (value) {},
                )
              ],
            )),
      ),
    );
  }
}
