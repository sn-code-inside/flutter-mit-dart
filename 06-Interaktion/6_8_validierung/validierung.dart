import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Valide extends StatefulWidget {
const Valide({super.key});

@override
State<Valide> createState() => _ValideState();
}
class _ValideState extends State<Valide> {
String eingabe = '';
String ausgabe = '';
String ansage = '';

final controllerEingabe = TextEditingController();

void updateText() {
setState(() {
eingabe = controllerEingabe.text;
var isEmpty = '';
if (eingabe == isEmpty) {
ansage = 'Fehlermeldung: ';
ausgabe = 'Leider keine Eingabe';
} else {
ansage = 'Eingabewert:';
ausgabe = eingabe;
}
showDialog<String>(
context: context,
builder: (BuildContext context) => AlertDialog(
title: Text(ansage),
content: Text(ausgabe),
actions: <Widget>[
TextButton(
onPressed: () => Navigator.pop(context, 'Cancel'),
child: const Text('Cancel'),
),
TextButton(
onPressed: () => Navigator.pop(context, 'OK'),
child: const Text('OK'),
),],),);});}

void clearText() {
setState(() {
controllerEingabe.clear();
});}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Formular - Validierung',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
margin: const EdgeInsets.all(20),
child: Column(children: [
Container(
margin: const EdgeInsets.all(50),
height: 80,
width: 280,
child: const Text(
'Bitte geben Sie die Daten '
'ein, nur \'[a-z '
'A-Z 0-9]\'.',
style: TextStyle(
fontSize: 20, letterSpacing: 1, fontWeight:
FontWeight.bold),
),),
TextField(
controller: controllerEingabe,
inputFormatters: <TextInputFormatter>[
FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9]')),
],
decoration: InputDecoration(
hintText: 'Geben Sie die '
'Zeichen ein',
labelText: 'Eingabe',
labelStyle: const TextStyle(
fontSize: 20, letterSpacing: 1, fontWeight:
FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
margin: const EdgeInsets.all(10),
height: 50,
width: 160,
color: Colors.black12,
child: (TextButton(
onPressed: clearText,
child: const Text(
"Löschen",
style: TextStyle(fontSize: 20, color: Colors.red),
),)),),
Container(
margin: const EdgeInsets.all(10),
height: 50,
width: 160,
color: Colors.black12,
child: (TextButton(
onPressed: updateText,
child: const Text(
"Abschicken",
style: TextStyle(fontSize: 20, color:
Colors.green),
),)),)],)]),),);}}