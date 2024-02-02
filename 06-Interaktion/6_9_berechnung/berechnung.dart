import 'package:flutter/material.dart';

class Rechnen extends StatefulWidget {
const Rechnen({super.key});

@override
State<Rechnen> createState() => _RechnenState();
}

class _RechnenState extends State<Rechnen> {
var z1 = '';
var z2 = '';
var operator = '';
double ergebnisAdd = 0;
double ergebnisSub = 0;
final controller1 = TextEditingController();
final controller2 = TextEditingController();
String rechenart = "add";
double ergebnisFinal = 0;
bool sichtbar = false;

void updateText() {
setState(() {
z1 = controller1.text;
z2 = controller2.text;
sichtbar = true;

if (rechenart == 'add') {
double ergebnisAdd = double.parse(z1) +
double.parse(z2);
ergebnisFinal = ergebnisAdd;
operator = '+';
}

if (rechenart == 'sub') {
double ergebnisSub = double.parse(z1) -
double.parse(z2);
ergebnisFinal = ergebnisSub;
operator = '-';
}
});
}

void clearText() {
setState(() {
sichtbar = false;
controller1.clear();
controller2.clear();
});
}

@override
Widget build(BuildContext context) {
return GestureDetector(
onTap: () {
FocusManager.instance.primaryFocus?.unfocus();
},
child: Scaffold(
appBar: AppBar(
title: const Text(
'Formular - Berechnungen',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
margin: const EdgeInsets.all(30),
child: SingleChildScrollView(
child: Column(children: [
Container(
margin: const EdgeInsets.all(20),
height: 50,
child: const Text(
"Rechenart wählen und "
"zwei Zahlen "
"eingeben:",
style: TextStyle(
fontSize: 22,
letterSpacing: 1,
fontWeight: FontWeight.bold),
),
),
SizedBox(
height: 25,
child: RadioListTile(
title: const Text(
"Addieren",
style: TextStyle(
letterSpacing: 1, fontWeight: FontWeight.bold),
),
value: "add",
groupValue: rechenart,
onChanged: (value) {
setState(() {
rechenart = value.toString();
});},),),
SizedBox(
height: 60,
child: RadioListTile(
title: const Text(
"Subtrahieren",
style: TextStyle(
letterSpacing: 1, fontWeight: FontWeight.bold),
),
value: "sub",
groupValue: rechenart,
onChanged: (value) {
setState(() {
rechenart = value.toString();
});},),),
TextField(
keyboardType: TextInputType.number,
maxLength: 10,
controller: controller1,
decoration: InputDecoration(
hintText: 'Geben Sie die erste Zahl ein',
labelText: 'Zahl 1',
labelStyle: const TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),
Padding(
padding: const EdgeInsets.only(left: 0, top: 10,
right: 0, bottom: 10),
child: TextField(
keyboardType: TextInputType.number,
maxLength: 10,
controller: controller2,
decoration: InputDecoration(
hintText: 'Geben Sie die zweite Zahl ein',
labelText: 'Zahl 2',
labelStyle: const TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),),
Row(mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
margin: const EdgeInsets.all(5),
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
margin: const EdgeInsets.all(5),
height: 50,
width: 160,
color: Colors.black12,
child: (TextButton(
onPressed: updateText,
child: const Text("Berechnen",
style: TextStyle(fontSize: 20, color:
Colors.green),
),)),)]),
Visibility(
visible: sichtbar,
child: Container(
alignment: Alignment.center,
margin: const EdgeInsets.all(20),
color: Colors.white,
height: 40,
width: double.infinity,
child: Text(
'$z1 $operator $z2 = '
'$ergebnisFinal',
style: const TextStyle(
overflow: TextOverflow.visible,
fontSize: 36,
letterSpacing: 1,
fontWeight: FontWeight.bold,
color: Colors.black,
),),),),]),),),),);}}