import 'package:influx/utility/Youtube/thumbnail_size.dart';
import 'package:meta/meta.dart';

class YoutubeChannelInfo {
  String title;
  String id;
  String description;
  Map<ThumbnailSize, String> thumbnailUrls;
  String channelTitle;

  YoutubeChannelInfo({@required this.title, @required this.id, @required this.description, @required this.thumbnailUrls,
      @required this.channelTitle});
}
