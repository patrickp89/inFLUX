import 'package:flutter_test/flutter_test.dart';
import 'package:influx/utility/Youtube/ThumbnailSize.dart';
import 'package:influx/utility/Youtube/YoutubeChannelInfo.dart';
import '../lib/utility/Youtube/YoutubeApiAdapter.dart';

void main() {
  test('fetching wbs channel info from "kanzleiwbs"', () async {
    YoutubeApiAdapter youtubeApiAdapter = new YoutubeApiAdapter();
    YoutubeChannelInfo youtubeChannelInfo = await youtubeApiAdapter.getChannelInfo("kanzleiwbs", "GOOGLE_API_KEY_HERE");
    assert(youtubeChannelInfo.title == "Kanzlei WBS");
    assert(youtubeChannelInfo.description.contains("Rechtsprechung "));
    assert(youtubeChannelInfo.thumbnailUrls.containsKey(ThumbnailSize.SMALL));
    assert(youtubeChannelInfo.id == "UCb5TfGtSgvNPVPQawfCFuAw");
  });
}
