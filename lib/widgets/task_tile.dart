import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task.dart';
import '../models/task_data.dart';

class TaskTile extends StatelessWidget {
  final String? name;
  final bool isDone;
  final void Function(bool?)? toggleDone;
  final void Function()? removeTask;

  const TaskTile({required this.removeTask, required this.toggleDone, required this.name, required this.isDone, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeTask,
      title: Text(
        name!,
        style: TextStyle(
            decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isDone,
        onChanged: toggleDone,
      ),
    );
  }
}

// (bool? checkboxNewValue){
// setState(() {
// checkboxValue = checkboxNewValue!;
// });},
