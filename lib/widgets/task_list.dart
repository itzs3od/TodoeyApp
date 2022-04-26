import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import '../models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, _){
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              name: task.name,
              isDone: task.isDone,
              toggleDone:(_)=> taskData.updateTask(task),
              removeTask: ()=> taskData.removeTask(task),
            );
          },
        );
      },
    );
  }
}
