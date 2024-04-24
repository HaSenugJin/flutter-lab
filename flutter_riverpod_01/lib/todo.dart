
// 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Todo {
  bool isCompleted;
  String description;
  Todo(this.isCompleted, this.description);
}
// 창고
class TodoVM extends Todo {
  TodoVM(super.isCompleted, super.description);

  String getCompleted(){
    return isCompleted ? "완료" : "미완료";
  }
}

// 창고 관리자 상태를 바꿀수는 있지만 화면이 다시그려지지 않는다
final todoProvider = StateProvider<TodoVM>((ref) {
  return TodoVM(true, "공부하기");
});
