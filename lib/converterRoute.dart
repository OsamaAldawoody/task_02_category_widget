import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:task_02_category_widget/unit.dart';

class ConverterRoute extends StatelessWidget{
  final List<Unit> units;

  const ConverterRoute({
    @required this.units,
}):assert (units != null);
  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      // TODO: Set the color for this Container
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: Colors.redAccent,
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }

}