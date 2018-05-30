import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Unit extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final double conversion;

  const Unit({
    Key key,
    @required this.name,
    @required this.color,
    @required this.conversion,
  })  : assert(name != null),
        assert(color != null),
        assert(conversion != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(name, style: Theme.of(context).textTheme.headline),
          Text('Conversion: $conversion', style: Theme.of(context).textTheme.subhead,)
        ]
      ),
    );
  }
}
