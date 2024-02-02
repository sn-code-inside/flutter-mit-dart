import 'package:flutter/material.dart';

class BotMenue extends StatefulWidget {
@override
_BotMenueState createState() => _BotMenueState();
}

class _BotMenueState extends State<BotMenue> {
int _currentIndex = 0;
final List<Widget> _screens = [
ScreenA(),
ScreenB(),
ScreenC(),
];
void _onTabTapped(int index) {
setState(() {
 _currentIndex = index;
});}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'BottomNavigationBar',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: _screens[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
currentIndex: _currentIndex,
onTap: _onTabTapped,
items: [
const BottomNavigationBarItem(
icon: Icon(Icons.home, size: 30),
label: 'Screen A',
),
const BottomNavigationBarItem(
icon: Icon(Icons.school_rounded,
size: 30,
),
label: 'Screen B',
),
const BottomNavigationBarItem(
icon: Icon(Icons.person,
size: 30,
),
label: 'Screen C',
),],

selectedItemColor: Colors.amber,
unselectedItemColor: Colors.grey,
selectedLabelStyle:
const TextStyle(fontSize: 24),
unselectedLabelStyle: const TextStyle(
fontSize: 20),
),);}}

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