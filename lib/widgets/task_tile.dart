import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked = false;
  void checkboxCallback(bool newValue) {}
//  setState(() {
//  isChecked = newValue;
//  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'do it',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked, toggleCheckBox: checkboxCallback),
      onTap: () {},
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBox;
  TaskCheckbox({this.checkboxState, this.toggleCheckBox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBox,
    );
  }
}
