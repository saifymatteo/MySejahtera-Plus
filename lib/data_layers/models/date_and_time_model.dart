import 'package:intl/intl.dart';

class DateAndTimeModel {
  final String dateAndDay;
  final String dateFull;
  final String timeHourMinute;
  final String timeHourMinuteSecond;

  DateAndTimeModel({
    required this.dateAndDay,
    required this.dateFull,
    required this.timeHourMinute,
    required this.timeHourMinuteSecond,
  });

  factory DateAndTimeModel.update(DateTime currentDate) {
    return DateAndTimeModel(
      dateAndDay: DateFormat('EEEE, d MMMM').format(currentDate),
      dateFull: DateFormat('d MMM, y').format(currentDate),
      timeHourMinute: DateFormat('h:mm a').format(currentDate),
      timeHourMinuteSecond: DateFormat('h:mm:ss a').format(currentDate),
    );
  }
}
