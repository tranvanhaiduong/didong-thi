import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/models/Category3.dart';
import 'package:flutter_bmi_calculator/moneypage.dart';
class CategoryItem3 extends StatelessWidget{
  Category3 category;
  CategoryItem3({this.category});
  @override
  Widget build(BuildContext context){
    Color _color=this.category.color3;

    return InkWell(
      onTap: (){
        print('tapped to category3: ${this.category.content3}');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //    builder: (context)=>BookPage(category: this.category)
        //   ));
        Navigator.pushNamed(context, MoneyPage3.routeName  , arguments: {'category3': category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(this.category.content3,style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
                ),
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      _color.withOpacity(0.6),
                      _color
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                ),
                color: _color,
                borderRadius: BorderRadius.circular(20)
            ),
          )
      ),
    );
  }
}