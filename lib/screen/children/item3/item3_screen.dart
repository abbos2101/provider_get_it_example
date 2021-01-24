import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item3_provider.dart';

class Item3Screen extends StatefulWidget {
  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => screen());

  static Widget screen() => ChangeNotifierProvider(
        create: (_) => Item3Provider(),
        builder: (context, child) => Item3Screen(),
      );

  @override
  _Item3ScreenState createState() => _Item3ScreenState();
}

class _Item3ScreenState extends State<Item3Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Delete'));
  }
}
