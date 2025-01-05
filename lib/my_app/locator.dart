import 'package:get_it/get_it.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/domain/usecase/report_usecase.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.pushNewScope();
  locator.registerFactory<ReportUseCase>(ReportUseCase.new);
  locator.registerFactory<MainContainerBloc>(MainContainerBloc.new);
  locator.registerSingleton<TimingUseCase>(TimingUseCase());
}
