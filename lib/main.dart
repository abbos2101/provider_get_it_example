import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_it_example/di/locator.dart';
import 'package:provider_get_it_example/screen/children/item2/item2_screen.dart';
import 'package:provider_get_it_example/screen/main_screen.dart';
import 'screen/children/net/list_provider.dart';
import 'screen/children/net/list_screen.dart';

void main() {
  locatorSetup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen.screen(),
    );
  }
}
