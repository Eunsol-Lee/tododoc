import 'package:flutter/material.dart';

class TododocApp extends StatelessWidget {
  const TododocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tododoc',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tododoc'),
        ),
        body: Center(
          child: Text('Welcome to Tododoc'),
        ),
      ),
    );
  }
}
