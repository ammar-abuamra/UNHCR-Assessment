import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unhcr/views/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNHCR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
