import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_02/fruit_store.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FruitPage(),
    );
  }
}

class FruitPage extends StatelessWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyConsumer1(), // 구독
            MyConsumer2(), // 구독
            MyConsumer3(), // 구독안함
            MyPublisher(), // 출판
          ],
        ),
      ),
    );
  }
}

class MyPublisher extends ConsumerWidget {
  const MyPublisher({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("MyPublisher 빌드됨");

    // 1. 출판
    FruitVM vm = ref.read(fruitProvider.notifier);

    return ElevatedButton(
        onPressed: () {
          vm..changeDate();
        },
        child: Text("딸기상태로 변경"));
  }
}

class MyConsumer1 extends ConsumerWidget {
  const MyConsumer1({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("MyConsumer1 빌드됨");
    String data = ref.watch(fruitProvider);

    return Text("data : ${data}", style: TextStyle(fontSize: 30));
  }
}

class MyConsumer2 extends ConsumerWidget {
  const MyConsumer2({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("MyConsumer2 빌드됨");
    String data = ref.watch(fruitProvider);

    return Text("data : ${data}", style: TextStyle(fontSize: 30));
  }
}

class MyConsumer3 extends StatelessWidget {
  const MyConsumer3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("MyConsumer3 빌드됨");
    return Text("data : 사과", style: TextStyle(fontSize: 30));
  }
}