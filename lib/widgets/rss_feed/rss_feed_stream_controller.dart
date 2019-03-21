import 'dart:async';
import 'package:influx/utility/rss_feed/rss_feed_reader.dart';

class RssFeedStreamController {
  static StreamController<RssPost> _streamController;

  static Stream<RssPost> createStream() {
    _streamController = StreamController(
      onCancel: _cancel
    );
    return _streamController.stream;
  }

  void closeStream() {
    _streamController.close();
  }

  static void _cancel() {
    print('Cancelled stream!\n');
  }

}