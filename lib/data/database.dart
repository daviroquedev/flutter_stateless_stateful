import 'package:flutter_stateless_stateful/data/task_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'task.db');

  return openDatabase(path, onCreate: (db, version) {
    // importando de outro arquivo
    db.execute(TaskDao.tableSql);
  }, version: 1);
}