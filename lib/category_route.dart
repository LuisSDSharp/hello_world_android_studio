import 'package:flutter/material.dart';

import 'category.dart';
import 'unit.dart';

final _bgColor = Colors.green[100];

const names = <String>[
  'Length',
  'Area',
  'Volume',
  'Mass',
  'Time',
  'Digital Storage',
  'Energy',
  'Currency',
];

const colors = <Color>[
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.greenAccent,
  Colors.purpleAccent,
  Colors.red,
];

class CategoryList extends StatefulWidget {
  Widget _getCategoriesList(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  List<Unit> _generateUnitsList(String catName, ColorSwatch color) {
    return List.generate(10, (int i) {
      i++;

      return Unit(
        name: '$catName Unit $i',
        color: color,
        conversion: i.toDouble(),
      );
    });
  }

  @override
  State<StatefulWidget> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final _categories = <Category>[];

  @override
  void initState() {
    super.initState();

    setState(() {
      for (var i = 0; i < names.length; i++) {
        _categories.add(Category(
          color: colors[i],
          icon: Icons.star,
          text: names[i],
          units: widget._generateUnitsList(names[i], colors[i]),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Unit Converter',
          style: TextStyle(color: Colors.black, fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: _bgColor,
      ),
      body: Container(
        color: _bgColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: widget._getCategoriesList(_categories),
      ),
    );
  }
}
