import 'package:flutter/material.dart';
import 'category.dart';

final _backgroundColor = Colors.redAccent;

class CategoryRoute extends StatelessWidget{
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets (List<Widget> Categories){
     return ListView.builder(
        itemBuilder: (BuildContext context,int index){
          return Categories[index];
        },
        itemCount: Categories.length,
    );
  }
  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];
    for(var i=0;i<_categoryNames.length;i++){
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }
    Widget list = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 0.0,
      backgroundColor: _backgroundColor,
      title: Text(
        'Unit Converter',
        style: TextStyle(
            fontSize: 30,color: Colors.black),
      ),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar,
      body: list,
    );
  }

}