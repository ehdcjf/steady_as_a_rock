import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:steady_as_a_rock/data/arock_info.dart';

class DatabaseHelper {
  late Database database;

  Future<void> initDatabase() async {
    // 앱 내부 데이터베이스 경로
    String path = join(await getDatabasesPath(), 'steady_as_a_rock.db');
    database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // 데이터 베이스 생성
        await db.execute("""
          CREATE TABLE IF NOT EXISTS TB_AROCK (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            quote TEXT,
            who TEXT,
            star INTEGER,
            birthYear INTEGER,
            deathYear INTEGER
          );""");
      },
    );
  }

  // CREATE
  Future<int> createArockInfo(ArockInfo arock) async {
    return await database.insert('TB_AROCK', arock.toMap());
  }

  // READ
  Future<List<ArockInfo>> getAllArockInfo() async {
    final List<Map<String, dynamic>> result = await database.query('TB_AROCK');
    return List.generate(result.length, (index) {
      return ArockInfo.fromMap(result[index]);
    });
  }

  // UPDATE
  Future<int> updateArockInfo(ArockInfo arock) async {
    return await database.update(
      'TB_AROCK',
      arock.toMap(),
      where: 'id = ?',
      whereArgs: [arock.id],
    );
  }

  // DELETE
  Future<int> deleteArockInfo(int id) async {
    return await database.delete(
      'TB_AROCK',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // close database
  Future<void> closeDatabase() async {
    await database.close();
  }
}
