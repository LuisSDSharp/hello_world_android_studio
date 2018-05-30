import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'unit.dart';

class UnitConverter extends StatefulWidget {
  final String name;
  final ColorSwatch color;
  final List<Unit> units;

  const UnitConverter({
    Key key,
    @required this.name,
    @required this.color,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(units != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() => new _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text(widget.name),
        centerTitle: true,
        backgroundColor: widget.color,
      ),
      body: ListView(
        children: widget.units,
      ),
    );
  }
}
