import 'package:timeago/timeago.dart';

class TimeCustomMessage implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'ago';
  @override
  String suffixFromNow() => 'from now';
  @override
  String lessThanOneMinute(int seconds) => 'now';
  @override
  String aboutAMinute(int minutes) => '1 minute';
  @override
  String minutes(int minutes) => '$minutes minutes';
  @override
  String aboutAnHour(int minutes) => '1 hour';
  @override
  String hours(int hours) => '$hours hours';
  @override
  String aDay(int hours) => '1 day';
  @override
  String days(int days) => '$days days';
  @override
  String aboutAMonth(int days) => '1 month';
  @override
  String months(int months) => '$months months';
  @override
  String aboutAYear(int year) => '1 year';
  @override
  String years(int years) => '$years years';
  @override
  String wordSeparator() => ' ';
}