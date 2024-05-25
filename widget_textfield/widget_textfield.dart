import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(body: Body2()),
    ),
  ));
}

class Body extends StatelessWidget {
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(onChanged: (value) {
            print("onChanged $value");
            textValue = value;
          }),
          ElevatedButton(
            onPressed: () {},
            child: Text("Send"),
          ),
          Text(textValue)
        ],
      ),
    );
  }
}

class Body2 extends StatefulWidget {
  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  TextEditingController textPassCtrl = TextEditingController();
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    textPassCtrl.addListener(
          () {
        setState(() {
          // Tăng chữ in hoa
          textPassCtrl.text = textPassCtrl.text.toUpperCase();
        });
        print("onChanged ${textPassCtrl.text}");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('DEMO PROJECT'),
          SizedBox(height: 20),
          Image.asset(
            'assets/demo.jpg',
            width: 150,
          ),

          SizedBox(height: 50),

          Card(
            elevation: 30,
            child: TextField(
              onChanged: (value) {
                print("onChanged $value");
              },
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Tài khoản',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          Card(
            elevation: 30,
            child: TextField(
              controller: textPassCtrl,
              autofocus: true,
              obscureText: _obscureText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                border: OutlineInputBorder(),
                hintText: 'Mật khẩu',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          Container(
            width: 150,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
              },
              child: Text(
                "Đăng nhập",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 30,
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}