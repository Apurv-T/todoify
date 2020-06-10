import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: "milk", isDone: false),
    Task(title: "sugar", isDone: false),
    Task(title: "salt", isDone: false),
  ];
  void addTask(String newdata) {
    final task = Task(title: newdata, isDone: false);
    tasks.add(task);
    notifyListeners();
  }
}
