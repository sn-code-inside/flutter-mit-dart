import 'package:flutter/material.dart';
import 'zweite_seite.dart';

class ErsterScreen extends StatelessWidget {
late String eingabe = "Hello from Screen 1";
final controller1 = TextEditingController();

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Erster Screen',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Padding(
padding: const EdgeInsets.all(20.0),
child: Column(mainAxisAlignment:
MainAxisAlignment.center,
children: [
TextField(
controller: controller1,
decoration: InputDecoration(
hintText: 'Geben Sie Text ein',
labelText: 'Eingabe',
labelStyle: const TextStyle(
fontSize: 20,
letterSpacing: 1,
fontWeight: FontWeight.bold),
fillColor: Colors.white,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
),),),
SizedBox(
height: 30.0,
),
ElevatedButton(
onPressed: () {
eingabe = controller1.text;
print('Eingabe: $eingabe');
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ZweiterScreen(uebertrag:
eingabe),
),);},
child: Text(
"Abschicken",
style: TextStyle(fontSize: 24, color:
Colors.white),
),
style: ElevatedButton.styleFrom(
fixedSize: Size(200, 50),
backgroundColor: Colors.green,
elevation: 5, // Schatten-Effekt
padding: EdgeInsets.symmetric(horizontal: 20,
vertical: 10),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),),),])),),);}}