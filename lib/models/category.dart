import 'package:flutter/material.dart';


class Category{
  const Category({
    required this.id,
    required this.title,
    this.color=Colors.orange,
    this.imgUrl='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7My4fWludnKdpsRWlHSb_cpI7H6rPRg9EDw&usqp=CAU',
});

  final String id;
  final String title;
  final Color color;
  final String imgUrl;
}