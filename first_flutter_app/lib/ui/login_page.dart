import 'package:first_flutter_app/resources/assets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController uNController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Image.asset(Assets.loginImage),
          Text(
            "Login",
            style: TextStyle(
              fontFamily: Assets.loginFont,
              fontSize: 30,
            ),
          ),
          TextField(
            controller: uNController,
            decoration: InputDecoration(
              hintText: "userName",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: pwController,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  obscureText: hidePassword,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                icon: Icon(Icons.remove_red_eye),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => {
                    if (uNController.text == 'bimal' && pwController.text == 'bimal')
                      {print("yes it is bimal")}
                    else
                      print("try again.")
                  },
              child: Text("Login"))
        ],
      ),
    );
  }
}
