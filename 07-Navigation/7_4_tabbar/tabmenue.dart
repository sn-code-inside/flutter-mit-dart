import 'package:flutter/material.dart';

class TabMenue extends StatefulWidget {
@override
_TabMenueState createState() => _TabMenueState();
}

class _TabMenueState extends State<TabMenue> {
@override
Widget build(BuildContext context) {
return DefaultTabController(
length: 2,
child: Scaffold(
appBar: AppBar(
title: Text(
'Navigation - TabBar',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
bottom: TabBar(
indicatorColor: Colors.amber,
indicatorWeight: 10,
tabs: [
Tab(
child: Container(
decoration: BoxDecoration(
color: Colors.grey[100],
),
height: 40,
child: Align(
alignment: Alignment.center,
child: Text(
'Screen A',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
fontSize: 18,
letterSpacing: 1,
),),),),),
Tab(
child: Container(
decoration: BoxDecoration(
color: Colors.grey[100],
),
height: 40,
child: Align(
alignment: Alignment.center,
child: Text(
'Screen B',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
fontSize: 18,
letterSpacing: 1,
),),),),),],),),
body: TabBarView(
children: [
Center(
child: Container(
color: Colors.green,
height: 100,
width: 250,
alignment: Alignment.center,
child: const Text(
'Screen A',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 36,
letterSpacing: 1,
),
),
),
),

Center(
child: Container(
color: Colors.red,
height: 100,
width: 250,
alignment: Alignment.center,
child: const Text(
'Screen B',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 36,
letterSpacing: 1,
),),),)],),),);}}