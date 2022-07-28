import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: const Text(
              "Where am I?",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.amber,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            width: 200,
            color: Colors.grey.shade400,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: const Text(
              "1. Baglung",
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            width: 200,
            color: Colors.grey.shade400,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: const Text(
              "2. Kathmandu",
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            width: 200,
            color: Colors.grey.shade400,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: const Text(
              "3. Pokhara",
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            width: 200,
            color: Colors.grey.shade400,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: const Text(
              "4. Birjung",
              textDirection: TextDirection.ltr,
            ),
          ),
          GestureDetector(
            onTap: (() {
              print("submit button is pressed.");
            }),
            child: Container(
              width: 100,
              color: Colors.red,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: const Text(
                "Button",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
