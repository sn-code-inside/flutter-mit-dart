import 'package:flutter/material.dart';

class DrawerMenue extends StatefulWidget {
@override
 _DrawerMenueState createState() =>
_DrawerMenueState();
}

class _DrawerMenueState extends State<DrawerMenue>
{
int _currentIndex = 0;
final List<Widget> _screens = [
ScreenA(),
ScreenB(),
ScreenC(),
ScreenD(),
];
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Navigation - Drawer',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
drawer: Drawer(
child: ListView(
children: [
DrawerHeader(
child: Text(
'Menü',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
letterSpacing: 1,
color: Colors.white),
),
decoration: BoxDecoration(
color: Colors.blueGrey,
),
),
ListTile(
title: Text(
'Screen A',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
letterSpacing: 1,
color: Colors.blueGrey),
),
onTap: () {
setState(() {
_currentIndex = 0;
Navigator.pop(context);
});},),
Divider(
thickness: 2,
color: Colors.blueGrey,
),
ListTile(
title: Text(
'Screen B',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
letterSpacing: 1,
color: Colors.blueGrey),
),
onTap: () {
setState(() {
_currentIndex = 1;
Navigator.pop(context);
});},),
Divider(
thickness: 2,
color: Colors.blueGrey,
),
ListTile(title: Text(
'Screen C',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
letterSpacing: 2,
color: Colors.blueGrey),
),
onTap: () {
setState(() {
_currentIndex = 2;
Navigator.pop(context);
});},),
Divider(
thickness: 2,
color: Colors.blueGrey,
),
ListTile(
title: Text(
'Screen D',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
letterSpacing: 1,
color: Colors.blueGrey),
),
onTap: () {
setState(() {
 _currentIndex = 3;
Navigator.pop(context);
});},),
Divider(
thickness: 2,
color: Colors.blueGrey,
),],),),
body: _screens[_currentIndex],
);}}

class ScreenA extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Center(
child: Container(
color: Colors.green,
height: 100,
width: 250,
alignment: Alignment.center,
child: const Text('Screen A',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 36,
letterSpacing: 1,
)),),);}}

class ScreenB extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Center(
child: Container(
color: Colors.red,
height: 100,
width: 250,
alignment: Alignment.center,
child: const Text('Screen B',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 36,
letterSpacing: 1,
)),),);}}

class ScreenC extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Center(
child: Container(
color: Colors.blue,
height: 100,
width: 250,
alignment: Alignment.center,
child: const Text('Screen C',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 36,
letterSpacing: 1,
)),),);}}

class ScreenD extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Center(
child: Container(
color: Colors.amber,
height: 100,
width: 250,
alignment: Alignment.center,
child: const Text('Screen D',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 36,
letterSpacing: 1,
)),),);}}