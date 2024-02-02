import 'package:flutter/material.dart';
import 'layout_padding.dart';

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
title: 'layout padding',
theme: ThemeData(
primarySwatch: Colors.grey,
),
home: LayoutContainer(),
),
);
}
}