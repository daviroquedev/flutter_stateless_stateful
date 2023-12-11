import 'package:flutter/material.dart';
import 'package:flutter_stateless_stateful/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    const Task(
        'Aprender Flutter',
        'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
        3),
    const Task(
        'Melhorar Poo',
        'https://hermes.dio.me/articles/cover/b426eb2a-48f8-44e2-815b-3236272a7ca5.png',
        4),
    const Task(
        'Descansar',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz8mTFIJiA71CsM_brlkyxYLTHH--kqpARcw&usqp=CAU',
        1),
    const Task(
        'Comer',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpz7xQHPpe3kr0dJ5F5UFTk2YjEewHVKB2SA&usqp=CAU',
        1),
    const Task(
        'Revisar Flutter',
        'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI',
        1),
    const Task(
        'Jogar',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMUHVeyU5yqO0WIn83K9ZaGTeNhvqWEfhg8w&usqp=CAU',
        1),
    const Task(
        'Jantar',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaLv6-mm8bl4yUl3NxnwzExHgTSlCAMoMMUw&usqp=CAU',
        1),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
