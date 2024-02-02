import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {

// Erstellen einer neuen Tabelle mit den Entitäten, die in der Datenbank
// gespeichert werden
static Future<void> createTables(sql.Database database) async {
await database.execute('CREATE TABLE notizen(id INTEGER PRIMARY KEY, title TEXT, description TEXT)');
}
static Future<sql.Database> db() async {
return sql.openDatabase(
'notizen.db',
version: 1,
onCreate: (sql.Database database, int version) async {
await createTables(database);
},
);
}

// Create, neue Notiz
static Future<int> createItem(String title, String? description) async {
final db = await SQLHelper.db();

final data = {'title': title, 'description': description};
final id = await db.insert('items', data,
conflictAlgorithm: sql.ConflictAlgorithm.replace);
return id;
}

// Read, alle Notizen
static Future<List<Map<String, dynamic>>> getItems() async {
final db = await SQLHelper.db();
return db.query('items', orderBy: "id");
}

// Read,  eine Notiz by id
static Future<List<Map<String, dynamic>>> getItem(int id) async {
final db = await SQLHelper.db();
return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
}

// Update, eine Notiz by id
static Future<int> updateItem(
int id, String title, String? description) async {
final db = await SQLHelper.db();

final data = {
'title': title,
'description': description,
};

final result =
await db.update('items', data, where: "id = ?", whereArgs: [id]);
return result;
}

// Delete
static Future<void> deleteItem(int id) async {
final db = await SQLHelper.db();
try {
await db.delete("items", where: "id = ?", whereArgs: [id]);
} catch (err) {
debugPrint("Fehlermeldung: $err");
}
}
}