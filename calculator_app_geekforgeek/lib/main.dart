import 'package:calculator_app_geekforgeek/button_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.deepPurpleAccent.shade100,
          centerTitle: false,
          titleTextStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
        ),
      ),
      home: const HomePage(title: "Calculator"),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final buttons = [
    'AC',
    "DEL",
    '%',
    '/',
    '7',
    '8',
    '9',
    'X',
    '4',
    '5',
    '5',
    '-',
    '1',
    '2',
    '3',
    '+',
    '',
    '0',
    '.',
    '=',
  ];
  var userInput = "";
  var answer = "0";
  bool isOperator(String? opr) {
    if (opr == '%' || opr == '/' || opr == 'X' || opr == '-' || opr == '+') {
      return true;
    }
    return false;
  }

  calculate() {
    // if();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      backgroundColor: Colors.deepPurpleAccent.shade100,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                  child: Text(
                    answer,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                  height: 0,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemCount: buttons.length,
                  itemBuilder: (context, index) {
                    if (buttons[index] == "AC") {
                      return MyButton(
                        buttonTap: () {
                          setState(() {
                            userInput = "";
                            answer = "0";
                          });
                        },
                        buttonText: buttons[index],
                        textColor: Colors.white,
                        color: Colors.red,
                      );
                    } else if (buttons[index] == "DEL") {
                      return MyButton(
                        buttonTap: () {
                          setState(() {
                            try {
                              userInput = userInput.substring(0, userInput.length - 1);
                            } catch (e) {
                              userInput = "";
                            }
                          });
                        },
                        buttonText: const Icon(Icons.backspace),
                        color: Colors.deepPurple[50],
                      );
                    }

                    return MyButton(
                      buttonTap: () {
                        setState(() {
                          userInput += buttons[index];
                        });
                      },
                      buttonText: buttons[index],
                      textColor: isOperator(buttons[index]) ? Colors.white : Colors.deepPurple,
                      color: isOperator(buttons[index]) ? Colors.deepPurple : Colors.deepPurple[50],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
