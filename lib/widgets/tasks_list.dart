import 'package:flutter/material.dart';

import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Biscuits')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return Listtilewidget(
          taskTitle: tasks[i].name,
          isChecked: tasks[i].isDone,
          checkboxCallBack: (checkboxstate) {
            setState(() {
              tasks[i].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

class Listtilewidget extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallBack;

  const Listtilewidget({
    this.taskTitle,
    this.isChecked,
    this.checkboxCallBack,
  });

  // void checkboxCallback

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        title: Text(
          '$taskTitle',
          style: TextStyle(
              fontSize: 20,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallBack,
          // togglechackboxstate,
        ),
      ),
    );
  }
}

// TaskCheckBox(isChecked,
// (bool newvalue) {
//           setState(() {
//             isChecked = newvalue;
//           });
//         }
// ),

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox(this.ischecked, this.togglechackboxstate);
//   final Function togglechackboxstate;

//   final bool ischecked;

//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }
