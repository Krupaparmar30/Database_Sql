import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static DbHelper dbHelper = DbHelper._();

  DbHelper._();

  Database? _db;

  Future<Database?> get database async => _db ?? await initDatabase();

  //init database-create table

  Future<Database?> initDatabase() async {
    //1.create path to store database
    final path = await getDatabasesPath();
    final dbpath = join(path, 'finance.db');

    _db = await openDatabase(
      dbpath,
      version: 1,
      onCreate: (db, version) async {
        String sql = '''
     CREATE TABLE finance(
     id INTEGER PRIMARY KEY AUTOINCREMENT ,
     amount REAL NOT NULL,
     isIncome INTEGER NOT NULL,
     category TEXT );
   
     
     ''';
        await db.execute(sql);
      },
    );
    return _db;
  }

  Future<void> insertData(String amount,String isIncome,String category) async {
    Database? db =await database;

    String sql='''
    INSERT INTO finance
    (amount,isIncome,category) VALUES (?,?,?);
    
    ''';
    await db!.rawInsert(sql,[amount,isIncome,category]);
  }


}
