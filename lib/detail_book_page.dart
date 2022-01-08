import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/models/Book.dart';
class DetailBookPage extends StatelessWidget{
  Book book;
  DetailBookPage({this.book});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('${book.name}'),),
      body: Column(
        children: <Widget>[
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: book.urlImage
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('Chi tiết sách',style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold ),),
          ),
         // Text('Mã loại sách ${book.categoryId}',style: TextStyle(fontSize: 19,color: Colors.black),),
          Expanded(
              child:ListView.builder(
                  itemCount: this.book.ingredients.length,
                  itemBuilder: (context,index){
                    String ingredient =this.book.ingredients[index];
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