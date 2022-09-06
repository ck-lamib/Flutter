import 'package:first_flutter_app/resources/assets.dart';
import 'package:first_flutter_app/ui/login_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.redAccent.shade100,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(0, 40),
            textStyle: TextStyle(
              fontFamily: Assets.loginFont,
              fontSize: 20,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
      ),
      home: LoginPage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter app"),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: Colors.white,
//               width: double.maxFinite,
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.only(bottom: 10),
//               child: const Text(
//                 "Where am I?",
//                 textDirection: TextDirection.ltr,
//                 style: TextStyle(
//                     color: Colors.pink,
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                     backgroundColor: Colors.amber,
//                     fontStyle: FontStyle.italic),
//               ),
//             ),
//             TextButton(
//               onPressed: () => print("option 1 is selected"),
//               style: TextButton.styleFrom(
//                 fixedSize: Size(150, 60),
//                 alignment: Alignment.centerLeft,
//               ),
//               child: const Text(
//                 "1. Baglung",
//                 textDirection: TextDirection.ltr,
//               ),
//             ),
//             TextButton(
//               onPressed: () => print("option 2 is selected"),
//               style: TextButton.styleFrom(
//                 fixedSize: Size(150, 60),
//                 alignment: Alignment.centerLeft,
//               ),
//               child: const Text(
//                 "2. Kathmandu",
//                 textDirection: TextDirection.ltr,
//               ),
//             ),
//             TextButton(
//               onPressed: () => print("option 3 is selected"),
//               style: TextButton.styleFrom(
//                 fixedSize: Size(150, 60),
//                 alignment: Alignment.centerLeft,
//               ),
//               child: const Text(
//                 "3. Pokhara",
//                 textDirection: TextDirection.ltr,
//               ),
//             ),
//             TextButton(
//               onPressed: () => print("option 4 is selected"),
//               style: TextButton.styleFrom(
//                 fixedSize: Size(150, 60),
//                 alignment: Alignment.centerLeft,
//               ),
//               child: const Text(
//                 "4. Birjung",
//                 textDirection: TextDirection.ltr,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print("submit button is pressed.");
//               },
//               style: ElevatedButton.styleFrom(fixedSize: Size(150, 60)),
//               child: const Text(
//                 "Button",
//                 textDirection: TextDirection.ltr,
//               ),
//             ),
//             Container(
//               color: Colors.blue[50],
//               height: 250,
//               margin: EdgeInsets.symmetric(vertical: 50),
//             ),
//             Container(
//               color: Colors.blue[50],
//               height: 250,
//               margin: const EdgeInsets.symmetric(vertical: 50),
//             ),
//             Container(
//               color: Colors.blue[50],
//               height: 250,
//               margin: EdgeInsets.symmetric(vertical: 50),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter app"),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(50),
//         children: [
//           Container(
//             color: Colors.white,
//             width: double.maxFinite,
//             padding: EdgeInsets.all(10),
//             margin: EdgeInsets.only(bottom: 10),
//             child: const Text(
//               "Where am I?",
//               textDirection: TextDirection.ltr,
//               style: TextStyle(
//                   color: Colors.pink,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                   backgroundColor: Colors.amber,
//                   fontStyle: FontStyle.italic),
//             ),
//           ),
//           TextButton(
//             onPressed: () => print("option 1 is selected"),
//             style: TextButton.styleFrom(
//               fixedSize: Size(150, 60),
//               alignment: Alignment.centerLeft,
//             ),
//             child: const Text(
//               "1. Baglung",
//               textDirection: TextDirection.ltr,
//             ),
//           ),
//           TextButton(
//             onPressed: () => print("option 2 is selected"),
//             style: TextButton.styleFrom(
//               fixedSize: Size(150, 60),
//               alignment: Alignment.centerLeft,
//             ),
//             child: const Text(
//               "2. Kathmandu",
//               textDirection: TextDirection.ltr,
//             ),
//           ),
//           TextButton(
//             onPressed: () => print("option 3 is selected"),
//             style: TextButton.styleFrom(
//               fixedSize: Size(150, 60),
//               alignment: Alignment.centerLeft,
//             ),
//             child: const Text(
//               "3. Pokhara",
//               textDirection: TextDirection.ltr,
//             ),
//           ),
//           TextButton(
//             onPressed: () => print("option 4 is selected"),
//             style: TextButton.styleFrom(
//               fixedSize: Size(150, 60),
//               alignment: Alignment.centerLeft,
//             ),
//             child: const Text(
//               "4. Birjung",
//               textDirection: TextDirection.ltr,
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               print("submit button is pressed.");
//             },
//             style: ElevatedButton.styleFrom(fixedSize: Size(150, 60)),
//             child: const Text(
//               "Button",
//               textDirection: TextDirection.ltr,
//             ),
//           ),
//           Container(
//             color: Colors.blue[50],
//             height: 250,
//             margin: EdgeInsets.symmetric(vertical: 50),
//           ),
//           Container(
//             color: Colors.blue[50],
//             height: 250,
//             margin: const EdgeInsets.symmetric(vertical: 50),
//           ),
//           Container(
//             color: Colors.blue[50],
//             height: 250,
//             margin: EdgeInsets.symmetric(vertical: 50),
//           ),
//         ],
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  List<String> items = ['apple', 'ball', 'car', 'donkey'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          String item = items[index];
          return Container(
            padding: EdgeInsets.all(40),
            color: index % 2 == 0 ? Colors.green.shade100 : Colors.blueAccent.shade100,
            margin: EdgeInsets.all(20),
            child: Text(
              item,
              style: TextStyle(fontSize: 25),
            ),
          );
        },
      ),
    );
  }
}
