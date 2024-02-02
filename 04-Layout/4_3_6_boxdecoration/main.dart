import 'package:flutter/material.dart';
import 'layout_boxdecoration.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return SafeArea(
child: MaterialApp(
debugShowCheckedModeBanner: false,
title: 'layout boxdecoration',
theme: ThemeData(
primarySwatch: Colors.grey,
),
home: LayoutContainer(),
),
);
}
}