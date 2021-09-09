import 'package:flutter/material.dart';
import 'package:todooo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todooo/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskData.tasks[index].isDone,
                taskData.tasks[index].name,
                    (bool? checkBoxState) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                (){
                  taskData.deleteTask(taskData.tasks[index]);
                }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
