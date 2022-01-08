import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/detail_money_dart.dart';
import 'package:flutter_bmi_calculator/fake_datamoney.dart';
import 'package:flutter_bmi_calculator/models/Money.dart';
import 'package:flutter_bmi_calculator/models/Category3.dart';
import 'detail_money_dart.dart';
class MoneyPage3 extends StatelessWidget{
  static const String routeName='/MoneyPage3';
  Category3 category3;
  MoneyPage3({this.category3});
  @override
  Widget build(BuildContext context) {
    Map<String, Category3> arguments = ModalRoute.of(context).settings.arguments;
    this.category3 = arguments['category3'];
    List<Money> moneys=FAKE_MoneyS.where((cd) => cd.categoryId3==this.category3.id3).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Quản lý ${category3.content3}'),
      ),
      body: Center(
          child: Center(
            child: moneys.length>0? ListView.builder(
                itemCount: moneys.length,
                itemBuilder: (context,index){
                  Money money=moneys[index];
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>DetailMoneyPage3(money: money,) )
                      );
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(20),
                            child: ClipRRect(
                              child: Center(
                                child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/images/loading.gif',
                                    image: money.urlImage3),
                              ) ,
                            )
                        ),
                        Positioned(top: 30,left: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white,width: 2)
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.book,color: Colors.red,size: 25,),
                                Text('${money.name3}',
                                  style: TextStyle(fontSize: 22,color: Colors.black),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }
            ):
            Text('Không có Money nào',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),

          )

      ),
    );
  }
}
