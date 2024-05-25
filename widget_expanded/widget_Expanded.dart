import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(body: Body()),
    ),
  ));
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:[
          Expanded(
            flex : 1,
            child: Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Home");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.green,
                      foregroundColor: Colors.orange,
                    ),
                    icon: Text("Home"),
                    label: Icon(Icons.abc, size: 24),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Settings");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    icon: Text("Settings"),
                    label: Icon(Icons.abc, size: 24),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Exit");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    icon: Text("Exit"),
                    label: Icon(Icons.add_alarm, size: 24),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/demo.jpg'), // Đường dẫn đến ảnh
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
