import 'package:demo1/models/category.dart';
import 'package:flutter/material.dart';
import 'Fake_date.dart';
class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.category.color;
    return(
        Container(
          //padding: EdgeInsets.all(10),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                    this.category.CateName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [this.category.color.withOpacity(0.6), this.category.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              color: _color,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        )
    );
  }

}