import 'package:dio/dio.dart';
import 'package:flutter_app_02/post.dart';

class PostRepository {
  Dio dio = Dio();

  Future<Post> findById(int id) async {
    // dio 통신 -> 컬렉션은 리스트, 오브젝트는 맵을 쓴다.
    // 스프링과 통신에서는 거의 대부분 맵을 쓴다.
    // 하지만 리스트가 올 수도 있으니 구분없이 둘다 받도록 final을 쓴다.
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts/${id}");

    final body = response.data!;

    Post post = Post.fromMap(body);
    // print(body);
    // print(body.runtimeType);
    return post;
  }
}
