import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task.dart';
import '../models/task_data.dart';

String textFieldValue = "";

class AddTaskScreen extends StatelessWidget {

  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                textFieldValue = newValue;
              },
              //autofocus: true,
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(textFieldValue);
                Navigator.pop(context);
              },
              child: const Text(
                "Add",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent)),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
