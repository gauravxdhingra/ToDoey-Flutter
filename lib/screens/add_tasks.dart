import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taks_data.dart';

class AddTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 100,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                    elevation: 5,
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      // print(newTaskTitle);
                      // addTaskCallback(newTaskTitle);

                      Provider.of<TaskData>(context, listen: false)
                          .addTask(newTaskTitle);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
