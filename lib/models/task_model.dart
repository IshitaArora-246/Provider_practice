class Task {
  String title;
  bool isCompleted;

  Task({this.isCompleted = false, required this.title});

  @override
  String toString() => 'Task(title: $title, isCompleted: $isCompleted)';
}
