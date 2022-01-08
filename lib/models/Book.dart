import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';

import 'Category.dart';
class Book{
  int id;
  String name;
  String urlImage;
  List<String> ingredients = List<String>();
  int categoryId;
  Book({
    @required this.name,
    @required this.urlImage,
    this.ingredients,
    this.categoryId
}){
    this.id=Random().nextInt(1000);
  }
}