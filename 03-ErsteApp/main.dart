import 'package:flutter/material.dart';
import 'hallo_welt.dart';

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
title: 'hallo welt',
theme: ThemeData(
primarySwatch: Colors.amber,
),
home: HalloWelt(),
// Wenn das Ziel noch nicht bekannt ist,
// dann setzen Sie die folgende Codezeile
// home: Placeholder(),
),
);
}
}
