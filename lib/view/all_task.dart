import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/task_model.dart';
import 'package:provider_example/models/tasks.dart';

class ShowAllTasks extends StatefulWidget {
  const ShowAllTasks({Key? key}) : super(key: key);

  @override
  _ShowAllTasksState createState() => _ShowAllTasksState();
}

class _ShowAllTasksState extends State<ShowAllTasks> {
  @override
  Widget build(BuildContext context) {
    Tasks tasks = Provider.of<Tasks>(context);
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: tasks.taskList.length,
          itemBuilder: (context, index) {
            Task myTask = tasks.taskList[index];
            return ListTile(
              title: Text(myTask.title),
              subtitle:
                  Text(myTask.isCompleted ? "Completed" : "not completed yet!"),
              trailing: InkWell(
                onTap: () {
                  setState(() {
                    tasks.removeAt(index);
                  });
                },
                child: Icon(
                  Icons.remove,
                ),
              ),
            );
          }),
    );
  }
}
