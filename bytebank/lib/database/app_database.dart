import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase() {
  getDatabasesPath().then((dbPath) {
    join(dbPath, 'bytebank.db');
  });
}