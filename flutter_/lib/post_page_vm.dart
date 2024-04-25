import 'package:flutter_app_02/post.dart';
import 'package:flutter_app_02/post_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터
class PostModel {
  Post post;

  PostModel(this.post);
}

// 2. 창고
class PostVM extends StateNotifier<PostModel?> {
  PostVM(super.state);

  void notifyInit() async {
    Post post = await PostRepository().findById(1);
    state = PostModel(post);
  }
}

// 3. 창고 관리자
final postProvider =
StateNotifierProvider<PostVM, PostModel?>((ref) {
  PostVM vm = PostVM(null);
  vm.notifyInit();
  return vm;
});
