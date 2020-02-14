import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DButil {
  static Future<sql.Database> createDatabase() async {
    var dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'places.db'),
        onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE user_places(id TEXT PRIMARY KEY, title TEXT, image TEXT)');
    }, version: 1);
  }

  static Future insert(String table, Map<String, Object> data) async {
    final db = await createDatabase();
    db.insert(table, data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }
}
