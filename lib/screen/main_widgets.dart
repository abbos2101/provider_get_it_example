import 'package:flutter/material.dart';
import 'children/item2/item2_screen.dart';
import 'children/item3/item3_screen.dart';
import 'children/net/list_screen.dart';
import 'main_provider.dart';

mixin MainBodyImp {
  Widget widgetBottomNavigationBar(MainProvider value) {
    return BottomNavigationBar(
      onTap: (id) => value.onChangedMenu(id),
      currentIndex: value.menuId,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'saved'),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'recycle'),
      ],
    );
  }

  Widget widgetBody(MainProvider value) {
    if (value.menuId == value.MENU_LIST) return ListScreen.screen();
    if (value.menuId == value.MENU_ITEM2) return Item2Screen.screen();
    if (value.menuId == value.MENU_ITEM3) return Item3Screen.screen();
    return Center(child: Text('Xatolik'));
  }
}
