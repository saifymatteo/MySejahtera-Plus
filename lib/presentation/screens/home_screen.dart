import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/data_layers/repositories/home_feed_repositories.dart';

import '../../data_layers/repositories/date_and_time_repositories.dart';
import '../components/button_card_activity_feed.dart';
import '../components/home_screen_header.dart';
import '../components/home_screen_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeScreenFeedRepositories repo = HomeScreenFeedRepositories();
  final DateAndTimeRepositories time = DateAndTimeRepositories();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repo.fetchFeedList(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CustomScrollView(
            slivers: [
              HomeScreenHeader(date: time.fetchDateTime().dateAndDay),
              const HomeScreenTitle(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ButtonCardActivityFeed(
                      postTitle: snapshot.data![index].title,
                      source: snapshot.data![index].source,
                      date: snapshot.data![index].date,
                      url: snapshot.data![index].urlPost,
                      imageURL: snapshot.data![index].imageURL,
                      postTime: snapshot.data![index].time,
                    );
                  },
                  childCount: snapshot.data!.length,
                ),
              ),
            ],
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return CustomScrollView(
            slivers: [
              HomeScreenHeader(date: time.fetchDateTime().dateAndDay),
              const HomeScreenTitle(),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    padding: const EdgeInsets.all(30),
                    width: 50,
                    height: 50,
                    child: const CircularProgressIndicator(),
                  ),
                ]),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return CustomScrollView(
            slivers: [
              HomeScreenHeader(date: time.fetchDateTime().dateAndDay),
              const HomeScreenTitle(),
              SliverList(
                delegate: SliverChildListDelegate([
                  Text('Error: ${snapshot.error}'),
                ]),
              ),
            ],
          );
        } else {
          return CustomScrollView(
            slivers: [
              HomeScreenHeader(date: time.fetchDateTime().dateAndDay),
              const HomeScreenTitle(),
              SliverList(
                delegate: SliverChildListDelegate([
                  const Text('Error, try to restart the app'),
                ]),
              ),
            ],
          );
        }
      },
    );
  }
}
