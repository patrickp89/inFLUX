import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:influx/widgets/rss_feed/rss_feed_page.dart';
import 'package:influx/widgets/twitter/twitter_page.dart';
import 'package:influx/widgets/youtube_page/youtube_page.dart';
import 'package:influx/widgets/home_page.dart';
import 'package:influx/utility/youtube/model/youtube_video_info.dart';
import 'package:influx/utility/rss_feed/rss_feed_reader.dart';
import 'package:influx/widgets/rss_feed/rss_feed_stream_controller.dart';

class InFluxNavigator {
  static var youtubeData = List<YoutubeVideoInfo>();

  static final Stream<RssPost> rssPostsStream = RssFeedStreamController.createStream();

  static final pages = <Page>[
    Page(
        index: 0,
        name: 'Home',
        body: HomePage(),
        icon: Icon(FontAwesomeIcons.home)),
    Page(
        index: 1,
        name: 'Youtube',
        body: YoutubePage(youtubeData),
        icon: Icon(FontAwesomeIcons.youtube)),
    Page(
        index: 2,
        name: 'Rss Feed',
        body: RssFeedPage(rssPostsStream: rssPostsStream),
        icon: Icon(FontAwesomeIcons.rss)),
    Page(
        index: 3,
        name: 'Twitter',
        body: TwitterPage(),
        icon: Icon(FontAwesomeIcons.twitter))
  ];

  static final render = (int index) => pages
      .where((page) => page.index == index)
      .map((page) => page.body)
      .single;
}

class Page {
  final int index;
  final String name;
  final Widget body;
  final Icon icon;

  const Page(
      {@required this.index,
      @required this.name,
      @required this.body,
      @required this.icon})
      : assert(body != null),
        assert(name != null),
        assert(index >= 0),
        assert(icon != null);
}
