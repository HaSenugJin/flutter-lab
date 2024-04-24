import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_01/todo.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
}

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref가 있어야 창고 관리자에게 접근 가능
    // read는 창고 데이터를 한번만 수신한다
    TodoVM vm = ref.read(todoProvider);
    
    return Scaffold(
      body: Center(
        child: Text(
          "완료 : ${vm.getCompleted()}, 내용 : ${vm.description}",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          vm.isCompleted = false;

          print("완료 : ${vm.isCompleted}");
        },
        child: Text("값변경"),
      ),
    );
  }
}
