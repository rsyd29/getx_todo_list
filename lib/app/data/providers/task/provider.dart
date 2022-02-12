import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_todo_list/app/core/utils/keys.dart';

import '../../models/task.dart';
import '../../services/storage/services.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  /** Example json object
      Map<String, dynamic> exampleJson = {
        'tasks': [
          {
            'title': 'Work',
            'color': '#ff123456',
            'icon': 0xe123,
          }
        ],
      };
   */

  /// method [readTasks] for read from local storage.
  List<Task> readTasks() {
    var tasks = <Task>[];

    /// jsonDecode for to decode and read from local storage [taskKey].
    jsonDecode(_storage.read(taskKey).toString()).forEach(
      (e) => tasks.add(
        Task.fromJson(e),
      ),
    );

    /// return value from var [tasks] of [List<Task>]
    return tasks;
  }

  /// method [writeTasks] for write to local storage.
  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
