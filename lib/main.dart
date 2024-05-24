import 'package:belajar_statemanagement/view/module_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue[400],
          secondaryHeaderColor: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: Colors.blue[400])),
      home: ModulePage(),
    );
  }
}
