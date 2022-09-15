import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Calculator",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 206, 165, 110),
        ),
      ),
      home: const CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController lav = TextEditingController();
  double a = 0;
  double b = 0;
  String opr = "";

  String calculate(double a, double b, String opr) {
    double result = 0;
    switch (opr) {
      case "+":
        result = a + b;
        break;
      case "-":
        result = a - b;
        break;
      case "*":
        result = a * b;
        break;
      case "/":
        result = (a / b);
        break;
      case "%":
        result = a % b;
        break;
    }
    return (result).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Calculator"),
      ),
      body: Column(
        children: [
          TextField(
            textAlign: TextAlign.center,
            enabled: false,
            controller: lav,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              hintText: "Answer Here",
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}1";
                        });
                      },
                      child: const Text('1'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}2";
                        });
                      },
                      child: const Text('2'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}3";
                        });
                      },
                      child: const Text('3'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}4";
                        });
                      },
                      child: const Text('4'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}5";
                        });
                      },
                      child: const Text('5'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}6";
                        });
                      },
                      child: const Text('6'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}7";
                        });
                      },
                      child: const Text('7'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}8";
                        });
                      },
                      child: const Text('8'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}9";
                        });
                      },
                      child: const Text('9'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(const Color.fromARGB(255, 95, 10, 4)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          a = 0;
                          b = 0;
                          opr = "";
                          lav.text = "";
                        });
                      },
                      child: const Text('C'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 91, 161, 196)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          lav.text = "${lav.text}0";
                        });
                      },
                      child: const Text("0"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        try {
                          setState(() {
                            lav.text = (lav.text).substring(0, lav.text.length - 1);
                          });
                        } on RangeError catch (e) {
                          lav.text = "Please enter a number";
                        }
                      },
                      child: const Icon(Icons.backspace_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          try {
                            a = double.parse(lav.text);
                          } on Exception catch (e) {
                            lav.text = "Please enter a number";
                          }
                          lav.text = "";
                          opr = "+";
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          try {
                            a = double.parse(lav.text);
                          } on Exception catch (e) {
                            lav.text = "Please enter a number";
                          }
                          lav.text = "";
                          opr = "-";
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          try {
                            a = double.parse(lav.text);
                          } on Exception catch (e) {
                            lav.text = "Please enter a number";
                          }
                          lav.text = "";
                          opr = "*";
                        });
                      },
                      child: const Icon(Icons.clear),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          try {
                            a = double.parse(lav.text);
                          } on Exception catch (e) {
                            lav.text = "Please enter a number";
                          }
                          lav.text = "";
                          opr = "/";
                        });
                      },
                      child: const Text("/"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          try {
                            a = double.parse(lav.text);
                          } on Exception catch (e) {
                            lav.text = "Please enter a number";
                          }
                          lav.text = "";
                          opr = "%";
                        });
                      },
                      child: const Icon(Icons.percent),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 228, 93, 93)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(20),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          try {
                            b = double.parse(lav.text);
                            lav.text = calculate(a, b, opr);
                          } on Exception catch (e) {
                            lav.text = "please select number to make calculation";
                          }
                        });
                      },
                      child: const Text("="),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
