import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터 (상태)
String date = "사과";

// 2. 창고 (상태 변경 메서드)
class FruitVM extends StateNotifier<String> {
  FruitVM(super.state);

  void changeDate() {
    state = "딸기";
  }
}

// 3. 창고 관리자 (창고에 read/write 하게 해줌)
// (창고이름, 창고상태)
final fruitProvider = StateNotifierProvider<FruitVM, String>((ref) {
  return FruitVM(date);
});