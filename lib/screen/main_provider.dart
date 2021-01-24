import 'package:flutter/material.dart';
import 'package:provider_get_it_example/data/dio_album_service.dart';
import 'package:provider_get_it_example/di/locator.dart';

class MainProvider extends ChangeNotifier {
  final int MENU_LIST = 0;
  final int MENU_ITEM2 = 1;
  final int MENU_ITEM3 = 2;
  int menuId = 0;

  void onChangedMenu(int value) {
    menuId = value;
    notifyListeners();
  }
}
