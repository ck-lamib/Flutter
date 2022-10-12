import 'dart:io';

import 'package:flutter/material.dart';
import 'package:todo_list_app/models/task.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool newcheck = false;
  // handleClick(bool check) {
  //   setState(() {
  //     newcheck = !check;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: "Exit",
          onPressed: () => exit(0),
          icon: const Icon(Icons.menu),
        ),
        actions: [
          Container(margin: const EdgeInsets.only(right: 20), child: const Icon(Icons.person))
        ],
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Task(
              num: 1,
              title: "title-1",
              desc: "desc of title-1",
              check: newcheck,
              onclickCheck: ((value) {
                setState(() {});
                newcheck = value;
              })),
          Task(
              num: 2,
              title: "title-2",
              desc: "desc of title-2",
              check: newcheck,
              onclickCheck: ((value) {
                setState(() {});
                newcheck = value;
              })),
        ],
      ),
    );
  }
}
