import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../components/recipe_list_item.dart';
import '../components/recipe_menu.dart';
import '../components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경색 화이트로 설정
      appBar: _buildRecipeAppBar(), // 비어있는 appbar
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 수평여백주기
        child: Column( // 위에서 아래로 내려가는 구조
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made burger"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white, // appbar 배경색
      elevation: 1.0, // 그림자
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
