import 'package:flutter/material.dart';
import 'package:unhcr/views/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacancy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VacancyListScreen(),
    );
  }
}
