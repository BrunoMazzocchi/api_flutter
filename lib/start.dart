

import 'package:api_test/pages/home_screen.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Rest Api Example"),
      ),
      body: const HomeScreen(),
    );
  }
}