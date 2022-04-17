import 'package:intl/intl.dart';

class DateAndTime {
  late String dateAndDay;
  late String dateFull;
  late String timeHourMinute;
  late String timeHourMinuteSecond;

  DateAndTime() {
    final DateTime currentDate = DateTime.now();
    dateAndDay = DateFormat('d MMMM, EEEE').format(currentDate);
    dateFull = DateFormat('d MMM, y').format(currentDate);
    timeHourMinute = DateFormat('h:mm a').format(currentDate);
    timeHourMinuteSecond = DateFormat('h:mm:ss a').format(currentDate);
  }
}
