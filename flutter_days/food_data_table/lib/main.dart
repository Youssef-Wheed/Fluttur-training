import 'package:flutter/material.dart';
import 'screens/data_table_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataTableScreen(), //screens
    );
  }
}
