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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        title: Text(
          '$title',
          style: TextStyle(fontSize: 20),
        ),
        trailing: TaskCheckBox(),
      ),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: (newValue) {
        setState(() {
          ischecked = newValue;
        });
      },
    );
  }
}
