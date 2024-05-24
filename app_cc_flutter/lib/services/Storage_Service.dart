import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';

class StorageService {
  static final StorageService _instance = StorageService._internal();

  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String databasePath = join(await getDatabasesPath(), 'app_database.db');
    return await openDatabase(
      databasePath,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE tips (
        id INTEGER PRIMARY KEY,
        title TEXT,
        content TEXT
      )
    ''');
  }

  Future<void> saveTip(String title, String content) async {
    final db = await database;
    await db.insert('tips', {'title': title, 'content': content});
  }

  Future<List<Map<String, dynamic>>> getTips() async {
    final db = await database;
    return await db.query('tips');
  }
}