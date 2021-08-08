import 'package:flutter/material.dart';
import 'package:gsg/model/Task.dart';

class MyProvider extends ChangeNotifier {
  List<Task> tasks;
  setTasks(tasks) {
    this.tasks = tasks;
    notifyListeners();
  }
}
