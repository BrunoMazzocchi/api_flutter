import 'package:api_test/start.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PracticeApp());

/// Practice App
class PracticeApp extends StatelessWidget {
  /// Constructor
  const PracticeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Rest Api Example',
        home: Start(),
      );
}
