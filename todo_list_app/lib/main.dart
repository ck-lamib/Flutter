import 'package:flutter/material.dart';
import 'package:todo_list_app/home_page.dart';

void main(List<String> args) {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo App",
      home: HomePage(title: "Todo List"),
    );
  }
}
