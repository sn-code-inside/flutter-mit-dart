import 'package:flutter/material.dart';
import 'sql_helper.dart';

class HomePage extends StatefulWidget {
const HomePage({Key? key}) : super(key: key);

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Alle Notizen
List<Map<String, dynamic>> _notizen = [];

// Mit dieser Funktion werden alle Daten aus der
// Datenbank abgerufen
void _refreshNotizen() async {
final data = await SQLHelper.getItems();
setState(() {
_notizen = data;
});
}

final _formKey = GlobalKey<FormState>();

@override
//Laden der Liste beim Start der App
void initState() {
super.initState();
_refreshNotizen();
}

//Controller initialisieren
final TextEditingController _notizController = TextEditingController();
final TextEditingController _beschreibungController = TextEditingController();
final TextEditingController _suchenController = TextEditingController();

// Variable für die Validierung der Eingabefelder
// initialisieren
String leer = '';
String voll = '';

// Diese Funktion wird ausgelöst, wenn der floating action button
// gedrückt wird.
// Sie wird auch ausgelöst, wenn ein Element aktualisiert wird
void _showForm(int? id) async {
if (id != null) {
// id == null -> create neue Notiz
// id != null -> update Notiz
final existingNotiz =
_notizen.firstWhere((element) => element['id'] == id);
_notizController.text = existingNotiz['title'];
 _beschreibungController.text = existingNotiz['description'];
}

showModalBottomSheet(
context: context,
elevation: 5,
isScrollControlled: true,
builder: (_) => Container(
padding: EdgeInsets.only(
top: 15,
left: 15,
right: 15,
// Dadurch wird verhindert, dass das Keyboard die
// Textfelder
// verdeckt
bottom: MediaQuery.of(context).viewInsets.bottom + 120,
),
child: Form(
key: _formKey,
child: Column(
mainAxisSize: MainAxisSize.min,
crossAxisAlignment: CrossAxisAlignment.end,
children: [
TextFormField(
controller: _notizController,
decoration: const InputDecoration(hintText: 'Notiz'),

// Der Validator erhält den Text, den der Benutzer
// eingegeben hat.
validator: (value) {
if (value == null || value.isEmpty) {
return 'Bitte Text eingeben';
}
return null;
},
),
TextFormField(
controller: _beschreibungController,
decoration: const InputDecoration(hintText: 'Beschreibung'),

// Der Validator erhält den Text, den der Benutzer
// eingegeben hat.
validator: (value) {
if (value == null || value.isEmpty) {
return 'Bitte Text eingeben';
}
return null;
},
),
const SizedBox(
height: 20,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(
onPressed: () {
Navigator.pop(context, 'Abbrechen');
_notizController.clear();
_beschreibungController.clear();
},
style: ElevatedButton.styleFrom(
elevation: 0.0,
fixedSize: const Size(150, 50),
backgroundColor: Colors.amber),
child: const Text('Abbrechen',
style: TextStyle(
fontSize: 15,
letterSpacing: 1,
color: Colors.white)),
),
ElevatedButton(
onPressed: () async {
// Validate gibt true [voll] zurück, wenn das Formular
// gültig ist, andernfalls false [leer].
if (_formKey.currentState!.validate()) {
voll = 'voll';
} else {
leer = 'leer';
}

if (voll == 'voll') {
// neue Notiz speichern
if (id == null) {
await _addItem();
}

if (id != null) {
await _updateItem(id);
}

// Eingabefelder löschen
_notizController.text = '';
_beschreibungController.text = '';

// Felder schließen
Navigator.of(context).pop();
}
},
style: ElevatedButton.styleFrom(
elevation: 0.0,
fixedSize: const Size(150, 50),
backgroundColor: Colors.green[400]),
child: Text(
id == null ? 'Neue Notiz speichern' : 'Update',
style: const TextStyle(
fontSize: 15,
letterSpacing: 1,
color: Colors.white),
textAlign: TextAlign.center,
),
),
],
),
]),
),
),
);
}

// Fügt eine neue Notiz in die Datenbank ein
Future<void> _addItem() async {
await SQLHelper.createItem(
_notizController.text, _beschreibungController.text);
_refreshNotizen();
}

// Updated eine Notiz
Future<void> _updateItem(int id) async {
await SQLHelper.updateItem(
id, _notizController.text, _beschreibungController.text);
_refreshNotizen();
}

// Delete, löscht eine Notiz
void _deleteItem(int id) async {
await SQLHelper.deleteItem(id);
ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
content: Text('Erfolgreich gelöscht!'),
));
_refreshNotizen();
}

// Diese Funktion wird immer dann aufgerufen, wenn
// sich das Textfeld ändert
void _runFilter(String enteredNotiz) {
List<Map<String, dynamic>> results = [];
if (enteredNotiz.isEmpty) {
// Wenn das Suchfeld leer ist oder nur
// Leerzeichen enthält, werden alle Notizen angezeigt
results = _notizen;
} else {
results = _notizen
.where((user) =>
user["title"].toLowerCase().contains(enteredNotiz.toLowerCase()))
.toList();
// Wir verwenden die Methode toLowerCase(), um die Groß- und
// Kleinschreibung zu berücksichtigen
}

// Aktualisieren der Benutzeroberfläche
setState(() {
_notizen = results;
});
}

// UI
@override
Widget build(BuildContext context) {
return GestureDetector(
// Keyboard ausblenden
onTap: () => FocusScope.of(context).unfocus(),
child: Scaffold(
appBar: AppBar(
title: const Text(
'notizen_db',
style: TextStyle(
fontSize: 26, color: Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body:

//Validierung und Anzeige bei leerer Datenbank
_notizen.isEmpty
? const Center(
child: Padding(
padding: EdgeInsets.all(15.0),
child: Text(
'Noch keine Notizen gespeichert!',
style: TextStyle(
fontSize: 36,
fontWeight: FontWeight.bold,
color: Colors.red),
),
),
)
: Column(children: [
const SizedBox(
height: 20,
),
// Suchfeld
Container(
width: 400,
height: 100,
color: Colors.white,
child: Center(
child: TextField(
onChanged: (value) {
_runFilter(value);
},
controller: _suchenController,
decoration: InputDecoration(
prefixIcon: const Icon(
Icons.input_sharp,
size: 30,
),
suffixIcon: IconButton(
icon: const Icon(Icons.clear),
onPressed: () {
_suchenController.clear();
_refreshNotizen();
},
),
hintText: '  Notiz finden...',
hintStyle:
TextStyle(fontSize: 20, color: Colors.green),
border: InputBorder.none,
),
),
),
),
SizedBox(
height: 20,
),
// Liste der Datenbankeinträge
Expanded(
child: ListView.builder(
itemCount: _notizen.length,
itemBuilder: (context, index) => Card(
color: Colors.grey[200],
margin: const EdgeInsets.all(15),
child: ListTile(
title: Text(_notizen[index]['title']),
titleTextStyle: TextStyle(
fontSize: 20, color: Colors.black),
subtitle: Text(_notizen[index]['description']),
subtitleTextStyle: TextStyle(
fontSize: 18, color: Colors.black),
trailing: SizedBox(
width: 100,
child: Row(
children: [
IconButton(
icon: const Icon(Icons.edit,
color: Colors.green, size: 30),
onPressed: () =>
_showForm(_notizen[index]['id']),
),
IconButton(
icon: const Icon(Icons.delete,
color: Colors.orange, size: 30),
onPressed: () {
showDialog<String>(
context: context,
builder: (BuildContext context) =>
AlertDialog(
title: const Text(
'Notiz löschen?'),
// content: Text(meldung),
actions: <Widget>[
TextButton(
onPressed: () =>
Navigator.pop(context,
'Abbrechen'),
child:
const Text('Abbrechen'),
),
TextButton(
onPressed: () {
_deleteItem(
_notizen[index]
['id']);
Navigator.pop(
context, 'Löschen');
},
child: const Text(
'Löschen')),
],
),
);
}),
],
),
)),
),
),
)
]),

// Eingabefelder anzeigen
floatingActionButtonLocation:
FloatingActionButtonLocation.centerFloat,
floatingActionButton: FloatingActionButton.extended(
backgroundColor: Colors.green,
elevation: 20,
label: const Text(
'Neue Notiz',
style: TextStyle(color: Colors.white, fontSize: 20),
),
icon: const Icon(
Icons.add,
color: Colors.white,
size: 30,
),
onPressed: () {
_showForm(null);
}),
));
}
}
