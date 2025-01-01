class LocalNotification {
  final String rightNowMessage;
  final String remeningTimeMessage;
  final String nextSalahTime;

  final String soundFileName;

  LocalNotification({
    required this.remeningTimeMessage,
    required this.rightNowMessage,
    required this.nextSalahTime,
    required this.soundFileName,
  });
}
