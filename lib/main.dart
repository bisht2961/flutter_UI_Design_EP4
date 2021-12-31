import 'package:flutter/material.dart';
import 'package:flutter_design_ep4/pages/home/home_page.dart';
import 'package:flutter_design_ep4/pages/root_app/root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootApp(),
    );
  }
}
