import 'package:app_vs2/app/pages/home/widgets/widgets_genres.dart';

import '/app/pages/home/widgets/widgets_slide.dart';

import '/app/controllers/home_controller.dart';
import '/app/data/models/lang_model.dart';
import '/app/pages/home/widgets/langs_list.dart';
import '/core/widgets/circle_button.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '/core/utils/palette.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends GetView<HomeController> {
  final TrackingScrollController scrollController;

  const HomePageMobile({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  void searchInfo() {
    //chuyen sang trang search
    print('click');
  }

  @override
  Widget build(BuildContext context) {
    //call dynamic
    List<LangModel> datalang = controller.langList.toList();

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          //brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'name_app'.tr,
            style: const TextStyle(
              color: Palette.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 23.0,
              onPressed: () => searchInfo(),
            ),
            CircleButton(
              icon: Icons.notifications_active,
              iconSize: 23.0,
              onPressed: () => searchInfo(),
            ),
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: LangsList(lstlang: datalang),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
          sliver: SliverToBoxAdapter(
            child: SlideList(),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
          sliver: SliverToBoxAdapter(
            child: GenresList(),
          ),
        ),
        /*  SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: LangsList(lstlang: datalang),
          ),
        ), */
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              //final Post post = posts[index];
              return const Text("Text");
            },
            childCount: 52,
          ),
        ),
      ],
    );
  }
}
