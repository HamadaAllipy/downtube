import 'package:downtube/data/models/channel.dart';

class Video{
  final String id;
  final Channel channel;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;

  Video({
    required this.channel,
    required this.duration,
    required this.id,
    required this.thumbnailUrl,
    required this.timestamp,
    required this.title,
    required this.viewCount,
});
}