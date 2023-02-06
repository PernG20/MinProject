import 'package:flutter/material.dart';
import 'package:pokemon_http_api/screen/home.dart';
import 'package:pokemon_http_api/screen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
      home: Index(),
    );
  }
}


  