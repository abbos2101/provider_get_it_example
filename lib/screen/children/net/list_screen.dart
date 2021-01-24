import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_it_example/screen/children/net/body.dart';

import 'list_provider.dart';

class ListScreen extends StatefulWidget {
  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => screen());

  static Widget screen() => ChangeNotifierProvider(
        create: (_) => ListProvider(),
        builder: (context, child) => ListScreen(),
      );

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> with ListBodyImp {
  @override
  void initState() {
    context.read<ListProvider>().launch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Scaffold(
          body: Consumer<ListProvider>(
            builder: (context, value, child) => widgetBody(value),
          ),
        ),
      ),
    );
  }
}
