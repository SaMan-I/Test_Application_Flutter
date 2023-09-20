import 'package:flutter/material.dart';
import 'test_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff343434),
        title: const Text(
          'Суроолор',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TestApp(),
        ),
      ),
    );
  }
}
