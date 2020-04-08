import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taks_data.dart';

class TasksList extends StatelessWidget {
  // List<Task> tasks = [
  //   Task(name: 'Buy Milk'),
  //   Task(name: 'Buy Bread'),
  //   Task(name: 'Buy Biscuits')
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, i) {
          return Listtilewidget(
            taskTitle: taskData.tasks[i].name,
            isChecked: taskData.tasks[i].isDone,
            checkboxCallBack: (checkboxstate) {
              // setState(() {
              // taskData.tasks[i].toggleDone();
              taskData.updateTask(taskData.tasks[i]);
              // });
            },
            longPressCallBack: () {
              taskData.deleteTask(taskData.tasks[i]);
            },
          );
        },
        itemCount: taskData.tasks.length,
      ),
    );
  }
}

class Listtilewidget extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function longPressCallBack;

  const Listtilewidget({
    this.taskTitle,
    this.isChecked,
    this.checkboxCallBack,
    this.longPressCallBack,
  });

  // void checkboxCallback

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        onLongPress: longPressCallBack,
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
