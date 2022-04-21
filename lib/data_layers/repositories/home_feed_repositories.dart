import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../helper/statistic_calculator.dart';
import '../models/home_feed_model.dart';

final apiKey = dotenv.env['GOOGLE_API_KEY'];
final accountID = dotenv.env['YOUTUBE_KKM_ACCOUNT_ID'];
final urlYouTubeFeed =
    'https://www.googleapis.com/youtube/v3/search?key=$apiKey&channelId=$accountID&part=snippet,id&order=date&maxResults=50';

DefaultCacheManager cacheManager = DefaultCacheManager();

class HomeScreenFeedRepositories {
  List<HomeScreenFeedModel> items = [];

  Future<List<HomeScreenFeedModel>> fetchFeedList() async {
    Map<String, dynamic> jsonData = jsonDecode(await fetchJSONasString(
        cacheManager: cacheManager, urlCSV: urlYouTubeFeed));

    debugPrint('Home screen feed is being updated');

    for (int i = 0; i < jsonData["items"].length; i++) {
      items.add(HomeScreenFeedModel.fromJson(jsonData["items"][i]));
    }

    return items;
  }
}
