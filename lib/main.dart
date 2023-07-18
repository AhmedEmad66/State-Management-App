import 'package:flutter/material.dart';
import 'package:state_management/state_management/filter_bar_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomFilterBar(),
    );
  }
}
