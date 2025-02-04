import 'package:get_it/get_it.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/domain/usecase/get_user_setting_usecase.dart';
import 'package:islam_app/domain/usecase/load_file_from_document_usecase.dart';
import 'package:islam_app/domain/usecase/notify_adhan_notification_usecase.dart';
import 'package:islam_app/domain/usecase/quran_prints_usecase.dart';
import 'package:islam_app/domain/usecase/report_usecase.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.pushNewScope();
  // UseCases
  locator.registerSingleton<TimingUseCase>(TimingUseCase());
  locator.registerFactory<SetupLocalNotificationWhenAppOpenUseCase>(
      SetupLocalNotificationWhenAppOpenUseCase.new);
  locator.registerFactory<ReportUseCase>(ReportUseCase.new);
  locator.registerFactory<NotifyAdhanNotificationUsecase>(
      NotifyAdhanNotificationUsecase.new);
  locator.registerFactory<LoadFileFromDocumentUseCase>(
      LoadFileFromDocumentUseCase.new);
  locator.registerFactory<GetUserSettingUseCase>(GetUserSettingUseCase.new);
  locator.registerFactory<QuranPrintsUsecase>(QuranPrintsUsecase.new);
  locator.registerFactory<DownloadFileUsecase>(DownloadFileUsecase.new);
  locator.registerFactory<ApplicationVersionUsecase>(
      ApplicationVersionUsecase.new);

  locator.registerSingleton<LocalNotificationRepository>(
      LocalNotificationRepository());
  locator.registerFactory<MainContainerBloc>(MainContainerBloc.new);
}
