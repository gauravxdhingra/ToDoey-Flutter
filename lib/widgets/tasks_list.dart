import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
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

class Listtilewidget extends StatefulWidget {
  final String title;

  const Listtilewidget({this.title});

  @override
  _ListtilewidgetState createState() => _ListtilewidgetState();
}

class _ListtilewidgetState extends State<Listtilewidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        title: Text(
          '${widget.title}',
          style: TextStyle(fontSize: 20),
        ),
        trailing: TaskCheckBox(isChecked),
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox(this.ischecked);

  final bool ischecked;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: (newValue) {
        // setState(() {
        //   ischecked = newValue;
        // });
      },
    );
  }
}
