import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width: double.maxFinite,
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
            TextButton(
              onPressed: () => print("option 1 is selected"),
              style: TextButton.styleFrom(
                fixedSize: Size(150, 60),
                alignment: Alignment.centerLeft,
              ),
              child: const Text(
                "1. Baglung",
                textDirection: TextDirection.ltr,
              ),
            ),
            TextButton(
              onPressed: () => print("option 2 is selected"),
              style: TextButton.styleFrom(
                fixedSize: Size(150, 60),
                alignment: Alignment.centerLeft,
              ),
              child: const Text(
                "2. Kathmandu",
                textDirection: TextDirection.ltr,
              ),
            ),
            TextButton(
              onPressed: () => print("option 3 is selected"),
              style: TextButton.styleFrom(
                fixedSize: Size(150, 60),
                alignment: Alignment.centerLeft,
              ),
              child: const Text(
                "3. Pokhara",
                textDirection: TextDirection.ltr,
              ),
            ),
            TextButton(
              onPressed: () => print("option 4 is selected"),
              style: TextButton.styleFrom(
                fixedSize: Size(150, 60),
                alignment: Alignment.centerLeft,
              ),
              child: const Text(
                "4. Birjung",
                textDirection: TextDirection.ltr,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("submit button is pressed.");
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 60)),
              child: const Text(
                "Button",
                textDirection: TextDirection.ltr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
