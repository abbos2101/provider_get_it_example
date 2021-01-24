import 'package:get_it/get_it.dart';
import 'package:provider_get_it_example/data/dio_album_service.dart';

GetIt locator = GetIt.instance;

void locatorSetup() {
  // locator.registerSingleton(HiveDB());
  // locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => DioAlbumService());
}
