import 'package:hfe_chat/models/todo_sqflite/model/todo_models.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ToDoDataBase {
  static final ToDoDataBase instance = ToDoDataBase._init();
  static Database? _database;
  ToDoDataBase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('todo.db');
    return _database!;
  }
  
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }
  
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    await db.execute('''
    CREATE TABLE $tableToDos ( 
      ${ToDoFields.id} $idType, 
      ${ToDoFields.isImportant} $boolType,
      ${ToDoFields.number} $integerType,
      ${ToDoFields.title} $textType,
      ${ToDoFields.deskripsi} $textType,
      ${ToDoFields.time} $textType
      )
    ''');
    }

  Future<ToDo> create(ToDo toDo) async {
    final db = await instance.database;
    final id = await db.insert(tableToDos, toDo.toJson());
    return toDo.copy(id: id);
  }
  
  Future<ToDo> readToDo(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableToDos,
      columns: ToDoFields.values,
      where: '${ToDoFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ToDo.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }
  
  Future<List<ToDo>> readAllToDos() async {
    final db = await instance.database;

    final orderBy = '${ToDoFields.time} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tableToDos, orderBy: orderBy);

    return result.map((json) => ToDo.fromJson(json)).toList();
  }

  Future<int> update(ToDo toDo) async{
    final db = await instance.database;
    return db.update(
      tableToDos, 
      toDo.toJson(),
      where: '${ToDoFields.id} =?',
      whereArgs: [toDo.id],
      );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableToDos,
      where: '${ToDoFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}