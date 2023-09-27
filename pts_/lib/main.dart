import 'package:flutter/material.dart';
import 'package:pts_/home.dart';
// ignore: unused_import
import 'package:pts_/Detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(

      ),
    );
  }
}
