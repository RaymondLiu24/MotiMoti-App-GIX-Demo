import 'package:flutter/material.dart';

class MyPractice extends StatefulWidget {
  const MyPractice({super.key});

  @override
  State<MyPractice> createState() => _MyPracticeState();
}

class _MyPracticeState extends State<MyPractice> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Practice',
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
