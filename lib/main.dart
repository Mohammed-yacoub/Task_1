import 'package:flutter/material.dart';
import 'package:oms/login.dart';
import 'package:oms/register.dart';
import 'package:oms/reset.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OMS_project",
      home: LogIn(),
    );
  }
}


