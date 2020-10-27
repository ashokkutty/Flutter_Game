import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDbProvider {
  SQLiteDbProvider._();
  static final SQLiteDbProvider db = SQLiteDbProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path =
        join(documentsDirectory.path, "ProductDB.db"); // Database Creation
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Cards ("
          "id INTEGER PRIMARY KEY,"
          "val INTEGER"
          "image TEXT"
          ")");
      await db.execute(//Clover Data & Images
          "INSERT INTO Cards ('id','val', 'image') VALUES (101,101,'assets/images/ac.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (102,102,'assets/images/c2.png')");
      await db.execute(
          "INSERT INTO Cards ('id,''val', 'image') VALUES (103,103,'assets/images/c3.png')");
      await db.execute(
          "INSERT INTO Cards ('id',val', 'image') VALUES (104,104,'assets/images/c4.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (105,105,'assets/images/c5.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (106,106,'assets/images/c6.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (107,107,'assets/images/c7.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (108,108,'assets/images/c8.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (109,109,'assets/images/c9.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (110,110,'assets/images/c10.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (111,110,'assets/images/jc.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (112,110,'assets/images/qc.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (113,110,'assets/images/kc.png')");
      //Diamond Data & Images
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (201,201,'assets/images/ad.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (202,202,'assets/images/d2.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (203,203,'assets/images/d3.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (204,204,'assets/images/d4.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (205,205,'assets/images/d5.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (206,206,'assets/images/d6.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (207,207,'assets/images/d7.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (208,208,'assets/images/d8.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (209,209,'assets/images/d9.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (210,210,'assets/images/d10.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (211,210,'assets/images/jd.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (212,210,'assets/images/qd.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (213,210,'assets/images/kd.png')");

      //Hearts Data and Images

      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (301,301,'assets/images/ah.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (302,302,'assets/images/h2.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (303,303,'assets/images/h3.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (304,304,'assets/images/h4.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (305,305,'assets/images/h5.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (306,306,'assets/images/h6.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (307,307,'assets/images/h7.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (308,308,'assets/images/h8.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (309,309,'assets/images/h9.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (310,310,'assets/images/h10.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (311,310,'assets/images/jh.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (312,310,'assets/images/qh.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (313,313,'assets/images/kh.png')");
      // Spade Image & Data
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (401,401,'assets/images/as.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (402,402,'assets/images/s2.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (403,403,'assets/images/s3.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (404,404,'assets/images/s4.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (405,405,'assets/images/s5.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (406,406,'assets/images/s6.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (407,407,'assets/images/s7.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (408,408,'assets/images/s8.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (409,409,'assets/images/s9.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (410,410,'assets/images/s10.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (411,410,'assets/images/js.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (412,410,'assets/images/qs.png')");
      await db.execute(
          "INSERT INTO Cards ('id','val', 'image') VALUES (413,413,'assets/images/ks.png')");
    });
  }

  /*Future<Deck> getProduct(int id) async {
    final db = await database;
    var result = await db.query("Product", where: "id = ", whereArgs: [id]);
    return result.isNotEmpty ? Deck.fromMap(result.first) : Null;
  }

  Future<Deck> delete(int id) async {
    final db = await database;
    db.delete("Product", where: "id = ?", whereArgs: [id]);
  }*/
}
