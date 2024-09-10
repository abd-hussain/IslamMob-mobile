import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:islam_app/services/general/network_info_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.pushNewScope();
  locator.registerLazySingleton(NetworkInfoService.new);
  // locator.registerSingleton<MainContainerBloc>(MainContainerBloc());

  // locator.registerSingleton<NetworkInfoService>(NetworkInfoService());

  // locator.registerFactory<FilterService>(FilterService.new);

  locator.registerFactory<Dio>(Dio.new);
  // locator.registerFactory<HttpInterceptor>(HttpInterceptor.new);
  // locator.registerSingleton<HttpRepository>(HttpRepository());
}
