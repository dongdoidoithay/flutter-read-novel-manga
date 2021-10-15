class TimeUtils {
  static String textTime(String times) {
    String time = '';
    var now = DateTime.now();
    var date = DateTime.parse(times);
    var diff = now.difference(date);

    print(diff);
    if (diff.inMinutes < 2) {
      time = 'Just now';
    } else {
      if (diff.inMinutes < 60)
        time = diff.inMinutes.toString() + ' minutes ago';
      else {
        if (diff.inDays < 1)
          time = diff.inHours.toString() + ' hour ago';
        else if (diff.inDays == 2)
          time = 'Yesterday';
        else
          time = diff.inDays.toString() + ' day ago';
      }
    }
    return time;
  }
}
