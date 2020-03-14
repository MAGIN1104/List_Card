import 'package:flutter/material.dart';
import 'package:list_images/src/pages/HomePage.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: HomePage(),
      )
    );
  }
}