import 'package:downtube/data/data.dart';
import 'package:downtube/presentation/widgets/card_view.dart';
import 'package:downtube/presentation/widgets/custom_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppbar(),
        SliverPadding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return CardVideo(
                  video: videos[index],
                );
              },
              childCount: videos.length,
            ),
          ),
        ),
      ],
    );
  }
}
