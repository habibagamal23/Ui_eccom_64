import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBSqflite {
  Database? _database;

  Future<Database> get database async {
    _database ??= await startDb();
    return _database!;
  }

  Future<Database?> startDb() async {
    var pathdb = await getDatabasesPath();
    var path = join(pathdb, "notes.db");
    return await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute("""
  CREATE TABLE notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    body TEXT
  )
""");
    });
  }

  Future<int> insertDb(String title, String body) async {
    Database db = await database;
    return await db.insert("notes", {"title": title, "body": body});
  }

  Future<List<Map<String, dynamic>>> getNotes() async {
    Database db = await database;
    return await db.query("notes");
  }

  Future<int> deleteNote(int id) async {
    Database db = await database;
    return await db.delete("notes", where: "id = ?", whereArgs: [id]);
  }
}
