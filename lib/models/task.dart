import 'package:flutter/cupertino.dart';

class Task {
  String title;
  bool isDone;
  Task({@required this.title, @required this.isDone});
  void toggleDone() {
    isDone = !isDone;
  }
}
