import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/login_creen3.dart';
import 'package:flutter_bmi_calculator/moneypage.dart';
import 'package:flutter_bmi_calculator/categories_page3.dart';

import 'login_creen3.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quản Lý Thông Tin Money',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginScreen3(),
    );
  }
}