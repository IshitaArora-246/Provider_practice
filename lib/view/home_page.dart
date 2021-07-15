import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/task_model.dart';
import 'package:provider_example/models/tasks.dart';
import 'package:provider_example/view/all_task.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: ctrl,
            ),
            Consumer<Tasks>(builder: (context, tasks, child) {
              return TextButton(
                onPressed: () {
                  setState(() {
                    tasks.add(Task(title: ctrl.text));
                  });
                  ctrl.clear();
                },
                child: Text("Add item"),
              );
            }),
            Consumer<Tasks>(builder: (context, tasks, child) {
              return Column(children: [
                ...tasks.taskList.map((task) => Text(task.title)).toList()
              ]);
            }),
            Expanded(child: ShowAllTasks())
          ],
        ),
      ),
    );
  }
}
