import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:kbbi_app/models/word.dart';

class DatabaseHelper {
  final String tableWord = 'datakata';
  final String columnId = '_id';
  final String columnKata = 'datakata';
  final String columnArti = 'artikata';

  static Database _db;
  String dbName = "database.db";

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, dbName);
    var exists = await databaseExists(path);
    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      ByteData data = await rootBundle.load(join('assets', dbName));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }
    return await openDatabase(path);
  }

  // GET ALL KATA
  Future<List> getAllWords() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM $tableWord");

    return result.toList();
  }

  //Count data
  Future<int> getCount() async {
    var dbClient = await db;

    return Sqflite.firstIntValue(
        await dbClient.rawQuery("SELECT COUNT(*) FROM $tableWord"));
  }

  Future<Word> getWord(int id) async {
    var dbClient = await db;

    var result = await dbClient
        .rawQuery("SELECT * FROM $tableWord WHERE $columnId = $id");
    if (result.length == 0) return null;
    return new Word.fromMap(result.first);
  }
}
