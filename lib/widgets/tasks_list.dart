import 'package:flutter/material.dart';
import 'package:todoifyflutter/widgets/task_tile.dart';
import 'package:todoifyflutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: "milk"),
    Task(title: "sugar"),
    Task(title: "salt"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
