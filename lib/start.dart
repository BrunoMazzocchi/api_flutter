import 'package:api_test/pages/home_screen.dart';
import 'package:flutter/material.dart';

/// Practice App
class Start extends StatelessWidget {
  ///  Constructor
  const Start({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Rest Api Example'),
        ),
        body: const HomeScreen(),
      );
}
