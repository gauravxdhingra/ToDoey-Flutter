import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Listtilewidget(title: 'This is a task!'),
        Listtilewidget(title: 'This is a task!'),
        Listtilewidget(title: 'This is a task!'),
        Listtilewidget(title: 'This is a task!'),
      ],
    );
  }
}

class Listtilewidget extends StatelessWidget {
  final String title;

  const Listtilewidget({this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$title',
        style: TextStyle(fontSize: 20),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (_) {},
      ),
    );
  }
}
