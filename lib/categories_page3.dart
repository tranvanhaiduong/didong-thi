import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/category_items3.dart';
import 'package:flutter_bmi_calculator/fake_datamoney.dart';
class CategoriesPage3 extends StatelessWidget{
  static const String routeName='/CategoriesPage3';
  @override
  Widget build(BuildContext context){
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES3.map((eachCategory2) => CategoryItem3(category: eachCategory2)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
    );
  }
}
