import 'package:app_vs2/app/data/models/document_model.dart';
import 'package:app_vs2/app/pages/home/widgets/newupdate/grid_item.dart';
import 'package:app_vs2/app/pages/home/widgets/newupdate/list_item.dart';
import 'package:app_vs2/app/pages/home/widgets/sliver_header.dart';
import 'package:app_vs2/app/pages/home/widgets/widgets_genres.dart';
import 'package:app_vs2/app/pages/home/widgets/widgets_group.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final int modeview = 0;
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
    List<Documents> dataslide = controller.slideList.toList();
    List<Documents> dataPopupGroup = controller.popUpList.toList();
    List<Documents> dataNewGroup = controller.newUpdateList.toList();
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          //brightness: Brightness.light,
          toolbarHeight: 40, //chieu cao
          backgroundColor: Colors.white,
          title: Text(
            'name_app'.tr,
            style: Get.textTheme.headline1!.copyWith(
              color: Palette.facebookBlue,
              fontSize: 20.sp,
              fontFamily: "Roboto",
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 15.r,
              onPressed: () => searchInfo(),
            ),
            CircleButton(
              icon: Icons.notifications_active,
              iconSize: 15.r,
              onPressed: () => searchInfo(),
            ),
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
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
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
          sliver: SliverToBoxAdapter(
            child: WidgetGroup(),
          ),
        ),
        const SliverSubHeader(
            backgroundColor: Palette.accentDark, text: 'New Update'),
        Obx(() {
          if (controller.modeview.value == 0) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  //final Post post = posts[index];
                  return WidgetListItem(item: controller.newUpdateList[index]);
                },
                childCount: controller.newUpdateList.length,
              ),
            );
          } else {
            return SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                //mainAxisSpacing: 10,
                //crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              // 2
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    WidgetGridItem(item: controller.newUpdateList[index]),
                childCount: controller.newUpdateList.length,
              ),
            );
          }
        }),
      ],
    );
  }
}
