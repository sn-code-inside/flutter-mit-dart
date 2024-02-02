import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
const ScreenA({super.key});

@override
State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Screen A',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: SizedBox(
width: double.infinity,
height: double.infinity,
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
margin: const EdgeInsets.all(5),
decoration: const BoxDecoration(
border: Border(
bottom: BorderSide(
color: Colors.black, width: 5, style:
BorderStyle.solid),
),
),
height: 50,
width: 111,
child: (TextButton(
child: const Text(
"Screen A",
style: TextStyle(
fontSize: 20,
color: Colors.red,
),
),
onPressed: () {
Navigator.pushNamed(context, '/screenA');
})),),
Container(
margin: const EdgeInsets.all(5),
height: 50,
width: 111,
color: Colors.black12,
child: (TextButton(
child: const Text(
"Screen B",
style: TextStyle(fontSize: 20, color:
Colors.green),
),
onPressed: () {
Navigator.pushNamed(context, '/screenB');
})),),
Container(
margin: const EdgeInsets.all(5),
height: 50,
width: 111,
color: Colors.black12,
child: (TextButton(
child: const Text(
"Screen C",
style: TextStyle(fontSize: 20, color:
Colors.green),
),
onPressed: () {
Navigator.pushNamed(context, '/screenC');
})),)],),),);}}
