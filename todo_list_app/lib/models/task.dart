import 'package:flutter/material.dart';

// typedef BoxChecked = Function(bool check);

class Task extends StatelessWidget {
  Task(
      {required this.check,
      required this.onclickCheck,
      required this.num,
      required this.title,
      required this.desc})
      : super(key: ObjectKey(UniqueKey()));

  final int num;
  final String title;
  final String desc;
  final bool check;
  // final BoxChecked onclickCheck;
  final Function(bool) onclickCheck;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          value: check,
          onChanged: (value) {
            onclickCheck(value!);
          },
        ),
        Expanded(child: task(num, title, desc)),
      ],
    );
  }
}

ListTile task(int num, String title, String desc) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Text("$num"),
      ),
      title: Text(
        title.replaceRange(0, 1, title[0].toUpperCase()),
        // ignore: prefer_const_constructors
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(desc),
      isThreeLine: false,
      trailing: IconButton(
        tooltip: "Edit",
        onPressed: (() => print('bimal')),
        icon: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ));
}
