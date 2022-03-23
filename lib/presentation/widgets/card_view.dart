import 'package:downtube/data/models/video.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class CardVideo extends StatelessWidget {
  final Video video;

  const CardVideo({
    Key? key,
    required this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            /// play video
          },
          child: Stack(
            children: [
              Image.network(
                video.thumbnailUrl,
                fit: BoxFit.cover,
                height: 220,
                width: double.infinity,
              ),
              PositionedDirectional(
                bottom: 8,
                end: 8,
                child: Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    video.duration,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                foregroundImage: NetworkImage(
                  video.channel.channelImageUrl,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        video.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 15),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '${video.channel.channelName} | ${video.viewCount} | ${timeago.format(
                          video.timestamp,
                        )}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_vert,
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
