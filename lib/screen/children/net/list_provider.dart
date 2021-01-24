import 'package:flutter/material.dart';
import 'package:provider_get_it_example/data/dio_album_service.dart';
import 'package:provider_get_it_example/data/model_albums.dart';
import 'package:provider_get_it_example/di/locator.dart';

enum StateStatus { LOADING, SUCCESS, FAIL }

class ListProvider extends ChangeNotifier {
  final DioAlbumService dioAlbumService = locator.get<DioAlbumService>();
  StateStatus status = StateStatus.LOADING;
  List<AlbumModel> list = [];

  void launch() async {
    await Future.delayed(Duration.zero);
    status = StateStatus.LOADING;
    notifyListeners();

    list = await dioAlbumService.getAlbums();
    if (list.length != 0) {
      status = StateStatus.SUCCESS;
      notifyListeners();
    } else {
      status = StateStatus.FAIL;
      notifyListeners();
    }
  }
}
