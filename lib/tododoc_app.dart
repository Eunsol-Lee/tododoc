import 'package:flutter/material.dart';
import 'package:tododoc/features/index.dart';

class TododocApp extends StatelessWidget {
  const TododocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tododoc',
      home: HomePage(),
    );
  }
}
