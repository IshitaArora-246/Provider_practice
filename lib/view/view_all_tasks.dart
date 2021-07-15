// import 'package:flutter/material.dart';
// import 'package:provider_example/models/task_model.dart';
// import 'package:provider_example/models/tasks.dart';

// class ViewAllTasks extends StatefulWidget {
//   ViewAllTasks({Key? key, required this.tasks}) : super(key: key);
//   final Tasks tasks;

//   @override
//   _ViewAllTasksState createState() => _ViewAllTasksState();
// }

// class _ViewAllTasksState extends State<ViewAllTasks> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: widget.tasks.color,
//       body: ListView.builder(
//           itemCount: widget.tasks.taskList.length,
//           itemBuilder: (context, index) {
//             Task myTask = widget.tasks.taskList[index];
//             return ListTile(
//               title: Text(myTask.title),
//               subtitle:
//                   Text(myTask.isCompleted ? "Completed" : "not completed yet!"),
//               trailing: InkWell(
//                 onTap: () {
//                   setState(() {
//                     print("complete - view - all : " +
//                         widget.tasks.taskList.toString());

//                     myTask.isCompleted = true;
//                     widget.tasks.color = Colors.red;
//                   });
//                 },
//                 child: Icon(
//                   Icons.done,
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
