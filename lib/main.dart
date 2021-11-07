import 'package:first_app/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {'/home': (_) => const First(), '/second': (_) => const First()},
    debugShowCheckedModeBanner: false,
    home: First(),
  ));
}
