import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_todo_list/app/core/utils/keys.dart';

/// class [StorageService] for [read] and [write] from [GetStorage].
class StorageService extends GetxService {
  /// [_box] for variable [late] from [GetStorage].
  late GetStorage _box;

  /// method [init] for write the [GetStorage] with [taskKey].
  Future<StorageService> init() async {
    _box = GetStorage();
    await _box.writeIfNull(taskKey, []);
    return this;
  }

  /// method [read] for read from [_box] with the [key], [T] is Generic Type from [key] and return value [T].
  T read<T>(String key) {
    return _box.read(key);
  }

  /// method [write] for write from [_box] with the [key] and [value].
  void write(String key, dynamic value) async {
    await _box.write(key, value);
  }
}
