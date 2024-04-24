import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 1;

  void increase() {
    num++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(child: HeaderPage(num)),
            Expanded(child: const MiddlePage(1)),
            Expanded(child: const MiddlePage(1)),
            Expanded(child: BottomPage(increase)),
          ],
        ),
      ),
    );
  }
}

class HeaderPage extends StatelessWidget {
  int num;

  HeaderPage(this.num);

  @override
  Widget build(BuildContext context) {
    print("header");
    return Container(
      color: Colors.red,
      child: Align(
        child: Text(
          "${num}",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class BottomPage extends StatelessWidget {
  Function increase;

  BottomPage(this.increase);

  @override
  Widget build(BuildContext context) {
    print("bottom");
    return Container(
      color: Colors.blue,
      child: Align(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            print("버튼 클릭됨");
            increase();
          },
          child: Text(
            "증가",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class MiddlePage extends StatelessWidget {
  final num;
  const MiddlePage(this.num);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}