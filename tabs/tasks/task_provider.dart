import 'package:charityorganization_app/tabs/tasks/task.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [Task("my frist task", false)];
  List<Task> get tasks {
    return _tasks;
  }

  void addTask(Task) {
    _tasks.add(Task);
    notifyListeners();
  }

  void removeTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void makeTaskcomplete(index) {
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
  }
}
