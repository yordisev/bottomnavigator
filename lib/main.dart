import 'package:bottomnavigator/bottom.dart';
import 'package:bottomnavigator/bottom2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MainScreen(),
      // home: PruebaScreen(),
    );
  }
}
