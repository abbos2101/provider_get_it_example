import 'package:dio/dio.dart';
import 'package:provider_get_it_example/data/model_albums.dart';

class DioAlbumService {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final String _albumsUrl = 'albums';
  final Dio _dio = Dio();

  DioAlbumService({String token});

  Future<List<AlbumModel>> getAlbums() async {
    List<AlbumModel> list = [];
    try {
      Response response = await _dio.request(
        '$_baseUrl$_albumsUrl',
        options: Options(method: 'GET'),
      );
      if (response.statusCode == 200 && response.data != null) {
        (response.data as List).forEach(
          (it) => list.add(AlbumModel.fromJson(it)),
        );
        return list;
      }
    } catch (e) {}
    return list;
  }
}
