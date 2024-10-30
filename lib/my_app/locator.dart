import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:islam_app/services/general/firebase_services.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/services/report_service.dart';
import 'package:islam_app/utils/repository/http_interceptor.dart';
import 'package:islam_app/utils/repository/http_repository.dart';

GetIt locator = GetIt.instance;

//TODO: try to open the app with no internet connection

Future<void> setupLocator() async {
  locator.pushNewScope();
  locator.registerLazySingleton(FirestoreService.new);
  locator.registerLazySingleton(NetworkInfoService.new);
  locator.registerFactory<ReportService>(ReportService.new);
  locator.registerFactory<Dio>(Dio.new);
  locator.registerFactory<HttpInterceptor>(HttpInterceptor.new);
  locator.registerSingleton<HttpRepository>(HttpRepository());
}
