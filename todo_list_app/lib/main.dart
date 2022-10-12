import 'package:flutter/material.dart';
import 'package:todo_list_app/home_page.dart';
import 'package:todo_list_app/models/task.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo App",
      // home: Task(),
      home: HomePage(title: "Todo List"),
    );
  }
}
