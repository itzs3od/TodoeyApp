import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> TaskData(),
      child: const MaterialApp(
          home: TasksScreen(),
        ),
    );
  }
}
//
// ChangeNotifierProvider(
// create: (_) => TaskData(),
// child: MaterialApp(
// home: ChangeNotifierProvider(
// create: (context) => Task(),
// child: const TasksScreen(),
// ),
// ),
// );
