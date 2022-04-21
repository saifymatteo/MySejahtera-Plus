import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../helper/custom_time_messages.dart';

const urlBasePost = 'https://www.youtube.com/watch?v=';

class HomeScreenFeedModel {
  final String title;
  final String urlPost;
  final String imageURL;
  final String source;
  final String date;
  final String time;

  HomeScreenFeedModel({
    required this.title,
    required this.urlPost,
    required this.imageURL,
    this.source = 'YT KKM',
    required this.date,
    required this.time,
  });

  factory HomeScreenFeedModel.fromJson(Map<String, dynamic> data) {
    final DateTime timeStamp = DateTime.parse(data["snippet"]["publishedAt"]);

    final DateTime timeNow = DateTime.now();

    final timeDifference = timeNow.subtract(timeNow.difference(timeStamp));

    timeago.setLocaleMessages('en', TimeCustomMessage());

    return HomeScreenFeedModel(
      title: data["snippet"]["title"],
      urlPost: urlBasePost + data["id"]["videoId"],
      imageURL: data["snippet"]["thumbnails"]["medium"]["url"],
      date: DateFormat('d MMM y').format(timeStamp),
      time: timeago.format(timeDifference),
    );
  }
}
