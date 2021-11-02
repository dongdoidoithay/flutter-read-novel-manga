import 'package:app_vs2/core/utils/shimmer.dart';
import 'package:app_vs2/core/values/constants.dart';
import 'package:app_vs2/core/values/string_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import '/core/utils/utils.dart';
import '/app/controllers/home_controller.dart';
import 'package:get/get.dart';

import '/app/data/models/lang_model.dart';
import 'package:flutter/material.dart';

import 'country/contry_widget.dart';

var ctrHome = Get.find<HomeController>();
final box = GetStorage();
PageController pageController = PageController(viewportFraction: 0.32);

class LangsList extends StatelessWidget {
  final List<LangModel> lstlang;
  const LangsList({
    required this.lstlang,
    Key? key,
  }) : super(key: key);

  //loadiing
  Widget loadding() {
    return Shimmer.fromColors(
      baseColor: Palette.grey_200,
      highlightColor: Palette.grey_300,
      enabled: true,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return itemloading();
        },
      ),
    );
  }

  Widget itemloading() {
    return Container(
      decoration: const BoxDecoration(color: Colors.blueAccent),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 130.r,
      child: Container(
        decoration: BoxDecoration(
          color: Get.theme.scaffoldBackgroundColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Text(''),
            ),
            SizedBox(
              width: 5.r,
            ),
            const Expanded(
              flex: 5,
              child: Text('loading..'),
            )
          ],
        ),
      ),
    );
  }
  //end loading

  Widget item(lang) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          var _val = lang.id + '-' + lang.type;
          box.write(Constants.keyLang, _val); //dung cho init ung dung
          //ctrHome.langItem.value = lang;
          ctrHome.changetype(lang);
        },
        child: SizedBox(
          width: 110.r,
          child: CoutryWidget(item: lang, itemselect: ctrHome.langItem.value),
        ),
      ),
    );
  }

  Widget buildList() {
    if (ctrHome.loading.value == true) {
      return loadding();
    } else {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ctrHome.langList.length,
        itemBuilder: (BuildContext context, int index) {
          final lang = ctrHome.langList[index];
          return item(lang);
        },
      );
    }
  }

  Widget buildWaper() {
    if (ctrHome.loading.value == true) {
      return loadding();
    } else {
      return PageView.builder(
          controller: pageController,
          itemCount: ctrHome.langList.length,
          itemBuilder: (context, index) {
            final lang = ctrHome.langList[index];
            return Container(child: item(lang));
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final double _width = Responsive.width(context);
    final double _height = Responsive.height(context);
    return Obx(() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
              width: double.infinity,
              height: _height * 0.035,
              decoration: const BoxDecoration(
                  color: Palette.facebookBlue,
                  // gradient: Palette.createRoomGradient,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                  )),
              child: Image.asset(StringAsset.iconPngfire),
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
              width: double.infinity,
              height: _height * 0.035,
              decoration: const BoxDecoration(
                  color: Palette.accentDark,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(5.0))),
              child: buildList(),
            ),
          ),
        ],
      );
    });
  }
}
