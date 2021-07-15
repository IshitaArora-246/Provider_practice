import 'package:flutter/material.dart';
import 'package:provider_example/models/task_model.dart';

class Tasks extends ChangeNotifier {
  List<Task> _taskList;
  // Tasks(
  //   List<Task> taskList,
  // ) : _taskList = taskList;

  Tasks() : _taskList = [];

  get taskList => _taskList;

  add(Task task) {
    _taskList.add(task);
    notifyListeners();
  }

  removeAt(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }

  @override
  String toString() => 'Tasks(taskList: $_taskList)';
}
