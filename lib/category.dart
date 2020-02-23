import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'unit.dart';
import 'converterRoute.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
}) : assert(name!=null),
     assert(color!=null),
     assert(iconLocation!=null),
     assert(units!=null),
        super(key:key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: ConverterRoute(
            color: color,
            units: units,
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    final _widgetHeight = 100.0;
    final _widgetRadius = BorderRadius.circular(_widgetHeight / 2.0);
    return Material(
      color: Colors.transparent,
      child:Container(
        height: _widgetHeight,

        child:InkWell(
          borderRadius: _widgetRadius,
          highlightColor: color,
          splashColor: color,
          onTap: (){print('tapped');},
          child:Padding(padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Icon(iconLocation,size:60,),
              ),
              new Center(
                child:new Text(name,style: TextStyle(fontSize: 24),),
              )
            ],
          ),
        ),
    ),
    )
    );
  }
}
