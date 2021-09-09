import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool? isChecked;
  final String taskTitle;
  final Function(bool ?) checkBoxCallback;
  final Function() longPressCallback;

  TaskTile(this.isChecked, this.taskTitle, this.checkBoxCallback,this.longPressCallback);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked == true ?  TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkBoxCallback,
    ),
    );
  }
}

