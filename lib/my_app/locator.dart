import 'package:get_it/get_it.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/domain/usecase/get_user_setting_usecase.dart';
import 'package:islam_app/domain/usecase/load_file_from_document_usecase.dart';
import 'package:islam_app/domain/usecase/notify_adhan_notification_usecase.dart';
import 'package:islam_app/domain/usecase/post_usecase.dart';
import 'package:islam_app/domain/usecase/quran_prints_usecase.dart';
import 'package:islam_app/domain/usecase/report_usecase.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';

/// Global service locator instance for dependency injection in the Islam Mob app.
///
/// This GetIt instance provides centralized dependency management for the
/// Islamic application, enabling clean architecture and testability. It
/// manages the lifecycle and injection of:
/// - **Islamic use cases** for prayer times, Quran, and religious features
/// - **Repository services** for data management and notifications
/// - **BLoC instances** for state management across Islamic features
/// - **Utility services** for app functionality and user experience
///
/// The locator ensures proper dependency injection throughout the Islamic
/// application while maintaining separation of concerns and testability.
GetIt locator = GetIt.instance;

/// Sets up all dependency injection registrations for the Islam Mob application.
///
/// This function configures the service locator with all necessary dependencies
/// for the Islamic application including:
/// - **Islamic use cases** for prayer calculations, Quran management, and notifications
/// - **Repository services** for local notifications and data persistence
/// - **BLoC state management** for main container and navigation
/// - **Utility services** for timing, file operations, and app functionality
///
/// The setup uses different registration strategies:
/// - **Singleton**: For services that should have single instances (TimingUseCase, LocalNotificationRepository)
/// - **Factory**: For services that can have multiple instances (most use cases and BLoCs)
///
/// This configuration supports the Islamic app's architecture by providing
/// clean dependency injection for all Islamic features and app functionality.
Future<void> setupLocator() async {
  locator.pushNewScope();
  // UseCases
  locator.registerSingleton<TimingUseCase>(TimingUseCase());
  locator.registerFactory<SetupLocalNotificationWhenAppOpenUseCase>(
    SetupLocalNotificationWhenAppOpenUseCase.new,
  );
  locator.registerFactory<ReportUseCase>(ReportUseCase.new);
  locator.registerFactory<NotifyAdhanNotificationUsecase>(
    NotifyAdhanNotificationUsecase.new,
  );
  locator.registerFactory<LoadFileFromDocumentUseCase>(
    LoadFileFromDocumentUseCase.new,
  );
  locator.registerFactory<GetUserSettingUseCase>(GetUserSettingUseCase.new);
  locator.registerFactory<QuranPrintsUsecase>(QuranPrintsUsecase.new);
  locator.registerFactory<PostUsecase>(PostUsecase.new);
  locator.registerFactory<DownloadFileUsecase>(DownloadFileUsecase.new);
  locator.registerFactory<ApplicationVersionUsecase>(
    ApplicationVersionUsecase.new,
  );
  locator.registerSingleton<LocalNotificationRepository>(
    LocalNotificationRepository(),
  );
  locator.registerFactory<MainContainerBloc>(MainContainerBloc.new);
}
