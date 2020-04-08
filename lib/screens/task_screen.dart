import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taks_data.dart';
import 'package:todoey/screens/add_tasks.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 60.0,
                bottom: 30.0,
                left: 30,
                right: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ToDoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasks.length} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTasks((newTaskTitle) {
              // print(newTaskTitle);

              // setState(() {
              //   tasks.add(Task(name: newTaskTitle, isDone: false));
              // });
            }),
          );
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
