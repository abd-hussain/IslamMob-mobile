class DayTime {
  String gettheCorrentImageDependOnCurrentTime() {
    final currentTime = DateTime.now();
    if (currentTime.hour > 8 && currentTime.hour < 18) {
      return "assets/images/days/sun.png";
    }
    return "assets/images/days/moon.png";
  }
}