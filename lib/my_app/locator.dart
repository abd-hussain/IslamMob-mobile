import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/domain/repository/firebase_firestore.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/domain/usecase/report_usecase.dart';
import 'package:islam_app/utils/repository/http_interceptor.dart';
import 'package:islam_app/utils/repository/http_repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.pushNewScope();
  locator.registerLazySingleton(FirebaseFirestoreRepository.new);
  locator.registerLazySingleton(NetworkInfoRepository.new);
  locator.registerFactory<ReportUseCase>(ReportUseCase.new);
  locator.registerFactory<Dio>(Dio.new);
  locator.registerFactory<HttpInterceptor>(HttpInterceptor.new);
  locator.registerSingleton<HttpRepository>(HttpRepository());
  locator.registerFactory<MainContainerBloc>(MainContainerBloc.new);
  locator.registerSingleton<TimingUseCase>(TimingUseCase());
}
