import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'converter_route.dart';
import 'unit.dart';

class Category extends StatelessWidget {
  final ColorSwatch color;
  final IconData icon;
  final String text;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.color,
    @required this.icon,
    @required this.text,
    @required this.units,
  })  : assert(color != null),
        assert(icon != null),
        assert(text != null),
  assert(units != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator
        .of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return UnitConverter(name: text, color: color, units: units,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: Padding(
          padding: new EdgeInsets.all(8.0),
          child: InkWell(
            highlightColor: color,
            splashColor: color,
            borderRadius: new BorderRadius.all(const Radius.circular(50.0)),
            onTap: () {
              _navigateToConverter(context);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.all(16.0),
                  child: Icon(icon, size: 60.0),
                ),
                Center(
                  child: Text(text, style: TextStyle(fontSize: 24.0)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
