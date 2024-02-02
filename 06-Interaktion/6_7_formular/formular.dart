import 'package:flutter/material.dart';

class Formularfelder extends StatefulWidget {
const Formularfelder({super.key});

 @override
State<Formularfelder> createState() =>
_FormularfelderState();
}

class _FormularfelderState extends
State<Formularfelder> {
String name = '';
var telefon = '';
var mail = '';
var passwort = '';

final controllerName = TextEditingController();
final controllerTelefon = TextEditingController();
final controllerMail = TextEditingController();
final controllerPasswort = TextEditingController();

bool sichtbar = false;

void updateText() {
setState(() {
name = controllerName.text;
telefon = controllerTelefon.text;
mail = controllerMail.text;
passwort = controllerPasswort.text;

FocusManager.instance.primaryFocus?.unfocus();
sichtbar = true;
});}

void clearText() {
setState(() {
sichtbar = false;
controllerName.clear();
controllerTelefon.clear();
controllerMail.clear();
controllerPasswort.clear();
});}

@override
Widget build(BuildContext context) {
return GestureDetector(
onTap: () {
FocusManager.instance.primaryFocus?.unfocus();
},
child: Scaffold(
appBar: AppBar(
title: const Text(
'Formular - Formularfelder',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
margin: EdgeInsets.all(20),
child: SingleChildScrollView(
child: Column(children: [
Container(
margin: EdgeInsets.all(20),
height: 50,
child: Text(
"Dateneingabe:",
style: TextStyle(
fontSize: 24,
letterSpacing: 1,
fontWeight: FontWeight.bold),
),),
TextField(
controller: controllerName,
decoration: InputDecoration(
hintText: 'Geben Sie einen Namen ein',
labelText: 'Name',
labelStyle: TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),
Padding(
padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
child: TextField(
keyboardType: TextInputType.phone,
controller: controllerTelefon,
decoration: InputDecoration(
hintText: 'Geben Sie eine Telefonnummer ein',
labelText: 'Telefon',
labelStyle: TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),),
Padding(
padding: const EdgeInsets.only(
left: 0.0, top: 10.0, right: 0.0, bottom: 10.0),
child: TextField(
keyboardType: TextInputType.emailAddress,
 controller: controllerMail,
decoration: InputDecoration(
hintText: 'Geben Sie eine E-Mail-Adresse ein',
labelText: 'Email',
labelStyle: TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),),
Padding(
padding: const EdgeInsets.only(
left: 0.0, top: 10.0, right: 0.0, bottom: 10.0),
child: TextField(
obscureText: true,
controller: controllerPasswort,
decoration: InputDecoration(
hintText: 'Geben Sie ein Passwort ein',
labelText: 'Passwort',
labelStyle: TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
margin: EdgeInsets.all(10),
child: (TextButton(
child: Text(
"Löschen",
style: TextStyle(fontSize: 20, color: Colors.red),
),
onPressed: clearText,
)),
height: 50,
width: 160,
color: Colors.black12,
),
Container(
margin: EdgeInsets.all(10),
child: (TextButton(
child: Text(
"Abschicken",
style: TextStyle(fontSize: 20, color:
Colors.green),
),
onPressed: updateText,
)),
height: 50,
width: 160,
color: Colors.black12,
)],),
Visibility(
visible: sichtbar,
child: Container(
alignment: Alignment.center,
margin: EdgeInsets.all(20),
color: Colors.white,
height: 40,
width: double.infinity,
child: Text(
'Der Button \'Abschicken\' wurde gedrückt.',
style: TextStyle(
overflow: TextOverflow.visible,
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold,
color: Colors.black,
),)),),]),),),),);}}