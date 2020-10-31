import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:kbbi_app/models/word.dart';

class DatabaseHelper {
  final String tableEntri = 'Entri';
  final String columnEid = 'eid';
  final String columnJenis = 'jenis';
  final String columnEntri = 'entri';

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

  Future<List> getAllWords() async {
    var dbClient = await db;
    var result =
        await dbClient.rawQuery("SELECT * FROM $tableEntri WHERE aktif = 1");

    return result.toList();
  }

  Future<int> getCount() async {
    var dbClient = await db;

    return Sqflite.firstIntValue(await dbClient
        .rawQuery("SELECT COUNT(*) FROM $tableEntri WHERE aktif = 1"));
  }

  Future<Word> getWord(int eid) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.eid = $eid AND E.aktif = 1");
    if (result.length == 0) return null;
    return new Word.fromMap(result.first);
  }

  Future<List> getWords(int eid) async {
    var dbClient = await db;
    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.eid = '$eid' AND E.aktif = 1");
    if (result.length == 0) return [];

    return result.toList();
    // return new Word.fromMap(result.first);
  }

  Future<List> getTurunan(int induk) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.induk = $induk AND E.jenis = 'berimbuhan' GROUP BY E.eid ORDER BY E.eid AND E.aktif = 1");
    if (result.length == 0) return [];

    return result.toList();
    // return new Word.fromMap(result.first);
  }

  Future<List> getGabungan(int induk) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.induk = $induk AND E.jenis = 'gabungan' AND E.aktif = 1 GROUP BY E.eid ORDER BY E.eid");
    if (result.length == 0) return [];

    return result.toList();
    // return new Word.fromMap(result.first);
  }

  Future<List> getWordPattern(int eid) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.eid = $eid AND E.aktif = 1");

    return result.toList();
  }

  Future<List> getWordStartWith(String char) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.entri LIKE '$char%' AND E.jenis = 'dasar' AND E.aktif = 1 GROUP BY E.eid ORDER BY E.eid");

    return result.toList();
  }

  Future<List> getContoh(int mid) async {
    var dbClient = await db;

    var result = await dbClient
        .rawQuery("SELECT contoh from Contoh WHERE mid = $mid AND aktif = 1");

    return result.toList();
  }

  Future<List> getCategoryByJenis(String jenis) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT kategori, katid, jenis from Kategori WHERE jenis = '$jenis' AND aktif = 1 AND kategori IS NOT NULL AND katid IS NOT NULL ORDER BY kid");
    if (result.length == 0) return [];

    return result.toList();
  }

  Future<List> getAllCategoryByJenis() async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT kategori, katid, jenis from Kategori WHERE aktif = 1 AND kategori IS NOT NULL AND katid IS NOT NULL ORDER BY kid");
    if (result.length == 0) return [];

    return result.toList();
  }

  Future<List> getWordByCategory(String jenis) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE  E.aktif = 1 AND (E.jenis = '$jenis' OR M.bahasa = '$jenis' OR M.ragam_var = '$jenis' OR M.bidang = '$jenis' OR M.kelas = '$jenis') GROUP BY E.eid ORDER BY E.eid");
    if (result.length == 0) return [];

    return result.toList();
  }

  Future<List> searchDataLike(String char) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery(
        "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M on E.eid = M.eid WHERE E.entri LIKE '%$char%' AND E.jenis = 'dasar' AND E.aktif = 1 GROUP BY E.eid ORDER BY E.eid");

    return result.toList();
  }
}
