import 'package:flutter/material.dart';
import 'package:todoifyflutter/models/task_data.dart';
import 'package:todoifyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: TaskData.tasks[index].title,
                isChecked: TaskData.tasks[index].isDone,
                checkBoxToggle: (newValue) {
                  setState(() {
                    TaskData.tasks[index].toggleDone();
                  });
                },
              );
            },
            itemCount: TaskData.tasks.length);
      },
    );
  }
}
