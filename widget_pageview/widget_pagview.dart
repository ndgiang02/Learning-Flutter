import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
          body: Center(
            child: Body1(5),
          )),
    ),
  ));
}

class Body1 extends StatefulWidget {
  int count;

  Body1(this.count, {super.key});

  @override
  State<Body1> createState() => _Body2State();
}

class _Body2State extends State<Body1> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 2,
          child: PageView.builder(
            itemCount: widget.count,
            itemBuilder: (context, index) => Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: index % 2 == 0 ? Colors.green : Colors.red),
              child: Text(
                "Page $index",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
          ),
        ),
        PageIndicator(widget.count, index)
      ],
    );
  }
}

class PageIndicator extends StatelessWidget {
  int count;
  int index;

  PageIndicator(this.count, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
            for (int i = 0; i < count; i++)
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: i == index ? Colors.red : Colors.grey,
                ),
              )
          ],
        ));
  }
}
