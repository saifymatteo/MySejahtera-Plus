import 'package:mysejahtera_plus/data_layers/models/date_and_time_model.dart';

class DateAndTimeRepositories {

  DateAndTimeModel fetchDateTime() {
    final DateTime currentDate = DateTime.now();
    return DateAndTimeModel.update(currentDate);
  }
}
