import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/categories_page3.dart';
import 'package:flutter_bmi_calculator/moneypage.dart';

import 'moneypage.dart';
import 'categories_page3.dart';
import 'navbar3.dart';

class MyApp3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Store',
      initialRoute: '/',
      routes: {
        '/MoneyPage3': (context) =>MoneyPage3(),
        '/CategoriesPage3':(context)=>CategoriesPage3()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          drawer: Navbar3(),
          appBar: AppBar(
            centerTitle: false,
            title: const Text('Quản lý CD'),
          ),
          body: SafeArea(
            child: CategoriesPage3(),
          )
      ),
    );
  }
}