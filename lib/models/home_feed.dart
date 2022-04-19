import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:mysejahtera_plus/helper/statistic_calculator.dart';
import 'package:timeago/timeago.dart' as timeago;

final apiKey = dotenv.env['GOOGLE_API_KEY'];
final accountID = dotenv.env['YOUTUBE_KKM_ACCOUNT_ID'];
final urlYouTubeFeed =
    'https://www.googleapis.com/youtube/v3/search?key=$apiKey&channelId=$accountID&part=snippet,id&order=date&maxResults=50';
const urlBasePost = 'https://www.youtube.com/watch?v=';
DefaultCacheManager cacheManager = DefaultCacheManager();

class HomeScreenFeed {
  HomeScreenFeed() {
    updateData();
  }

  String title = '';
  String urlPost = urlBasePost;
  String imageURL = '';
  String imageWidthHeight = '320 x 180'; // TODO: Figure out later
  String source = 'CPRC KKM';
  String date = '';
  String time = '';

  void updateData() async {
    Map<String, dynamic> data = jsonDecode(await fetchJSONasString(
        cacheManager: cacheManager, urlCSV: urlYouTubeFeed));

    debugPrint('Home screen feed is being updated');

    List messageList = data["items"];
    int messageListTotal = messageList.length;
    debugPrint('Messages List Total:\n$messageListTotal');

    title = data["items"][0]["snippet"]["title"];
    urlPost = urlBasePost + data["items"][0]["id"]["videoId"];
    imageURL = data["items"][0]["snippet"]["thumbnails"]["medium"]["url"];

    time = data["items"][0]["snippet"]["publishedAt"];

    // final DateTime timeStamp =
    //     DateTime.fromMillisecondsSinceEpoch(data["messages"][0]["date"] * 1000);
    // final DateTime timeNow = DateTime.now();
    // final timeDifference = timeNow.subtract(timeNow.difference(timeStamp));

    // date = DateFormat('d MMM y').format(timeStamp);
    // time = timeago.format(timeDifference);

    // debugPrint('Date: $date');
    // debugPrint('Time: $time');
  }
}
