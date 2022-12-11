import 'package:demo1/models/CategoryItem.dart';
import 'package:demo1/models/Fake_date.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Food Manager"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,

              ),

              onPressed: (){
                print("You Add New item");
              },
            )
          ],
        ),
        body: SafeArea(
          child: GridView(
            padding: EdgeInsets.all(10),
            children: categories.map((cat){
              return(
                  CategoryItem(category: cat)
              );
            }).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent:  300,
                childAspectRatio: 4/2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10

            ),
          ),
        ),
      )
    );
  }

}