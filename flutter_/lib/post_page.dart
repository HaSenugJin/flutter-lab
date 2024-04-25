import 'package:flutter/material.dart';
import 'package:flutter_app_02/post.dart';
import 'package:flutter_app_02/post_page_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostWidget(),
    );
  }
}

class PostWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostModel? model = ref.watch(postProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      Post post = model.post;

      return Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.network("https://picsum.photos/id/50/200/200",
                fit: BoxFit.cover),
          ),
          Text("id : ${post.id}, userId: ${post.userId}, title : ${post.title}"),
          ElevatedButton(onPressed: () {}, child: Text("값변경")),
        ],
      );
    }
  }
}
