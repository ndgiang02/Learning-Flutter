import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Page(),
    ),
  ));
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TAB DEMO"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                  icon: Icon(Icons.home, color: Colors.red,),
                  text: "Home"
              ),
              Tab(
                  icon: Icon(Icons.settings, color: Colors.green,),
                  text: "Settings"
              ),
              Tab(
                  icon: Icon(Icons.home, color: Colors.red,),
                  text: "Home"
              ),
              Tab(
                  icon: Icon(Icons.settings, color: Colors.green,),
                  text: "Settings"
              ),
              Tab(
                  icon: Icon(Icons.home, color: Colors.red,),
                  text: "Home"
              ),

            ],
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              FirstScr(),
              SecondScr(),
              FirstScr(),
              SecondScr(),
              FirstScr(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScr extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("First"),);
  }
}

class SecondScr extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Second"),);
  }
}
