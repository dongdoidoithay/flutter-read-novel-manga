import '/app/pages/home/widgets/langs_list.dart';

import '/core/utils/palette.dart';
import 'package:flutter/material.dart';

class HomePageTablet extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomePageTablet({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        const SliverAppBar(
          //brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            /*  CircleButton(
              icon: Icons.search,
              iconSize: 30.0,
              onPressed: () => print('Search'),
            ),
            CircleButton(
              icon: MdiIcons.facebookMessenger,
              iconSize: 30.0,
              onPressed: () => print('Messenger'),
            ), */
          ],
        ),
        const SliverToBoxAdapter(
          child: LangsList(lstlang: []),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Text("Text"),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Text("oke"),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              //final Post post = posts[index];
              return const Text("Text");
            },
            childCount: 12,
          ),
        ),
      ],
    );
  }
}
