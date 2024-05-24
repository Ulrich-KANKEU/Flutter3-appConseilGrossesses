import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';

class PregnancyService {
  static final PregnancyService _instance = PregnancyService._internal();

  factory PregnancyService() {
    return _instance;
  }

  PregnancyService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String databasePath = join(await getDatabasesPath(), 'pregnancy_database.db');
    return await openDatabase(
      databasePath,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE pregnancy (
        id INTEGER PRIMARY KEY,
        due_date TEXT,
        reminders TEXT
      )
    ''');
  }

  Future<void> savePregnancyInfo(String dueDate, String reminders) async {
    final db = await database;
    await db.insert('pregnancy', {'due_date': dueDate, 'reminders': reminders});
  }

  Future<Map<String, dynamic>?> getPregnancyInfo() async {
    final db = await database;
    final List<Map<String, dynamic>> result = await db.query('pregnancy');
    if (result.isNotEmpty) {
      return result.first;
    }
    return null;
  }
}