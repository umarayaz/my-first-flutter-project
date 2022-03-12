
import 'package:flutter/material.dart';
import 'package:flutter_myapp/DMC.dart';

void main() { runApp(const umarApp());
}
class umarApp extends StatelessWidget {
  const umarApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'flutter demo',
      home: dmc(),
    );






  }
}
