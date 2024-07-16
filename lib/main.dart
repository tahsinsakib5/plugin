import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:plugin/alarm/alarmhomepage.dart';
import 'package:plugin/secondhomepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Alarm.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SeconHomePage(),
    );
  }
}