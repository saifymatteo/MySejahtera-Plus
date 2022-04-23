import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/data_layers/repositories/home_feed_repositories.dart';

import '../components/button_card_activity_feed.dart';
import '../components/home_screen_header.dart';
import '../components/home_screen_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

  HomeScreenFeedRepositories repo = HomeScreenFeedRepositories();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repo.fetchFeedList(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CustomScrollView(
            slivers: [
              HomeScreenHeader(currentDate: currentDate),
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
        } else {
          return CustomScrollView(
            slivers: [
              HomeScreenHeader(currentDate: currentDate),
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
        }
      },
    );
  }
}