import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: "Go to the gym"),
    Task(name: "Work from home"),
    Task(name: "Do push ups"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String taskName){
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}