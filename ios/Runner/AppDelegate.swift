  import UIKit
  import Flutter
  import flutter_downloader
  import flutter_local_notifications
  import BackgroundTasks
  import GoogleSignIn

  @main
  @objc class AppDelegate: FlutterAppDelegate {

    override func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

      setupLocalNotifications()
      
      // Register Flutter plugins
      GeneratedPluginRegistrant.register(with: self)

      // Assign UNUserNotificationCenter delegate on iOS >= 10
      if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().delegate = self
      }

      // Set minimum background fetch interval (older iOS background fetch API)
      UIApplication.shared.setMinimumBackgroundFetchInterval(
        UIApplication.backgroundFetchIntervalMinimum
      )

      // // Register BGTaskScheduler for iOS 13+ (AVOID referencing 'self' in the closure)
      // if #available(iOS 13.0, *) {
      //   BGTaskScheduler.shared.register(
      //     forTaskWithIdentifier: "com.islammob.app.prayerRefresh",
      //     using: nil
      //     ) { [weak self] task in
      //       guard let self = self else { return }
      //       self.handleAppRefresh(task: task as! BGAppRefreshTask)
      //   }
      // }

      // Flutter Downloader
      FlutterDownloaderPlugin.setPluginRegistrantCallback(registerPlugins)

      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func application(
      _ app: UIApplication,
      open url: URL,
      options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }

    // // MARK: - Background Fetch (iOS < 13)
    // override func application(
    //   _ application: UIApplication,
    //   performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
    // ) {
    //   // 1. Recalculate prayer times or call a Dart method
    //   // 2. Schedule notifications
    //   // 3. completionHandler(.newData) or .noData or .failed
    //   completionHandler(.newData)
    // }

    // // MARK: - BGTaskScheduler Handler (Static)
    // @available(iOS 13.0, *)
    // func handleAppRefresh(task: BGAppRefreshTask) {
    //   // 1. Recalculate your prayer times
    //   // 2. Schedule notifications
    //   // 3. Mark task as complete
    //   task.setTaskCompleted(success: true)
    // }

    // MARK: - Flutter Local Notifications Setup
    private func setupLocalNotifications() {
      FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { registry in
        GeneratedPluginRegistrant.register(with: registry)
      }
    }
  }
    // MARK: - Register Plugins for FlutterDownloader
    private func registerPlugins(registry: FlutterPluginRegistry) {
      if !registry.hasPlugin("FlutterDownloaderPlugin") {
        FlutterDownloaderPlugin.register(
          with: registry.registrar(forPlugin: "FlutterDownloaderPlugin")!
        )
      }
    }

