import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_it_example/screen/children/item2/item2_screen.dart';
import 'package:provider_get_it_example/screen/children/net/list_screen.dart';
import 'package:provider_get_it_example/screen/main_widgets.dart';
import 'children/item3/item3_screen.dart';
import 'main_provider.dart';

class MainScreen extends StatefulWidget {
  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => screen());

  static Widget screen() => ChangeNotifierProvider(
        create: (_) => MainProvider(),
        child: MainScreen(),
      );

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with MainBodyImp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MainProvider>(
        builder: (context, value, child) => widgetBody(value),
      ),
      bottomNavigationBar: Consumer<MainProvider>(
        builder: (context, value, child) => widgetBottomNavigationBar(value),
      ),
    );
  }
}
