import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item2_provider.dart';

class Item2Screen extends StatefulWidget {
  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => screen());

  static Widget screen() => ChangeNotifierProvider(
        create: (_) => Item2Provider(),
        builder: (context, child) => Item2Screen(),
      );

  @override
  _Item2ScreenState createState() => _Item2ScreenState();
}

class _Item2ScreenState extends State<Item2Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Saved'));
  }
}
