import 'package:flutter/material.dart';
import 'package:wavid_teacher/presentation/pages/ingame_page.dart';
import 'package:wavid_teacher/presentation/pages/main_page.dart';
import 'package:wavid_teacher/presentation/pages/waiting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainPage());
  }
}
