import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';

import 'Category3.dart';
class Money{
  int id3;
  String name3;
  String urlImage3;
  List<String> ingredients3 = List<String>();
  int categoryId3;
  Money({
    @required this.name3,
    @required this.urlImage3,
    this.ingredients3,
    this.categoryId3
  }){
    this.id3=Random().nextInt(1000);
  }
}