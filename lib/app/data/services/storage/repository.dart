import 'package:getx_todo_list/app/data/models/task.dart';

import '../../providers/task/provider.dart';

class TaskRepository {
  /// create constructor from [taskProvider].
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  /// method [readTasks] for read from local storage.
  List<Task> readTasks() => taskProvider.readTasks();

  /// method [writeTasks] for write to local storage.
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
