import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StorePage(),
    ); // MaterialApp
  }
}
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Row(
          children: [
            Text("Woman"),
            Text("Kids"),
            Text("Shoes"),
            Text("Bag"),
          ],
        )],
      )
    );
  }
}
