import 'package:demo1/models/Category_Page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
      MaterialApp(
        title: "Food with Navigation",
        theme: ThemeData(
          primaryColor: Colors.cyan
        ),
        home: Center(
          child: CategoryPage()
        ),
      )
    );
  }

}



