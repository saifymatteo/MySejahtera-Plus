import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/home_feed_model.dart';

final apiKey = dotenv.env['GOOGLE_API_KEY'];
final accountID = dotenv.env['YOUTUBE_KKM_ACCOUNT_ID'];
final urlYouTubeFeed =
    'https://www.googleapis.com/youtube/v3/search?key=$apiKey&channelId=$accountID&part=snippet,id&order=date&maxResults=50';

DefaultCacheManager cacheManager = DefaultCacheManager();

class HomeScreenFeedRepositories {
  List<HomeScreenFeedModel> items = [];

  Future<List<HomeScreenFeedModel>> fetchFeedList() async {
    try {
      http.Response response = await http.get(Uri.parse(urlYouTubeFeed));
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      debugPrint('Home screen feed is being updated');

      for (int i = 0; i < jsonData["items"].length; i++) {
        items.add(HomeScreenFeedModel.fromJson(jsonData["items"][i]));
      }

      return items;
    } catch (e) {
      debugPrint('Error: $e');
      throw Exception('Covid-19 Global Data could not be updated');
    }
  }
}
