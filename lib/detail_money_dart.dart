import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/models/Money.dart';
class DetailMoneyPage3 extends StatelessWidget{
  Money money;
  DetailMoneyPage3({this.money});
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('${money.name3}'),),
        body: Column(
          children: <Widget>[
            Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading.gif',
                  image: money.urlImage3
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Chi tiết money',style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold ),),
            ),
            // Text('Mã loại sách ${book.categoryId}',style: TextStyle(fontSize: 19,color: Colors.black),),
            Expanded(
                child:ListView.builder(
                    itemCount: this.money.ingredients3.length,
                    itemBuilder: (context,index){
                      String ingredient =this.money.ingredients3[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('#${index+1}',style: TextStyle(fontSize: 19,color: Colors.black),),
                        ),
                        title: Text(ingredient,style: TextStyle(fontSize: 22),),
                      );
                    }
                )
            )
          ],
        )
    );
  }
}