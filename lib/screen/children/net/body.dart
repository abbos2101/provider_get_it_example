import 'package:flutter/material.dart';
import 'list_provider.dart';

mixin ListBodyImp {
  Widget widgetBody(ListProvider value) {
    switch (value.status) {
      case StateStatus.LOADING:
        return Center(child: CircularProgressIndicator());
      case StateStatus.FAIL:
        return Center(child: Text('Xatolik'));
      case StateStatus.SUCCESS:
        return _widgetList(value);
    }
  }

  Widget _widgetList(ListProvider value) {
    return ListView.builder(
      itemCount: value.list.length,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(left: 4, right: 4, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey[500]),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: Center(
                  child: Text(
                '${value.list[index].id}',
                style: TextStyle(fontSize: 18),
              )),
            ),
            Expanded(
              flex: 4,
              child: Text(
                '${value.list[index].title}',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
