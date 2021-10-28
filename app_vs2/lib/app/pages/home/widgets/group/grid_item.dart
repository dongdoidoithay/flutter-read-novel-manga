import 'package:app_vs2/app/controllers/home_controller.dart';
import 'package:app_vs2/app/data/models/models.dart';
import 'package:app_vs2/core/utils/palette.dart';
import 'package:app_vs2/core/utils/shimmer.dart';
import 'package:app_vs2/core/utils/utils.dart';
import 'package:app_vs2/core/values/string_assets.dart';
import 'package:app_vs2/core/widgets/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ItemGroupWidget extends StatefulWidget {
  const ItemGroupWidget({Key? key}) : super(key: key);

  @override
  State<ItemGroupWidget> createState() => _ItemGroupWidgetState();
}

class _ItemGroupWidgetState extends State<ItemGroupWidget> {
  bool firts = true;
  int currentselect = 1;
  var ctrHome = Get.find<HomeController>();
  PageController pageController = PageController(viewportFraction: 0.45);
  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.45, initialPage: 1);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget LoadingWidget() {
    return Shimmer.fromColors(
      baseColor: Palette.grey_200,
      highlightColor: Palette.grey_300,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: Palette.boxGradient,
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            border: Border.all(color: Colors.black, width: 1.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(300)),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: Palette.boxGradient,
                            borderRadius:
                                BorderRadius.all(Radius.circular(300)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Expanded(
                    child: Container(
                      height: 4.r,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Container(
                      height: 4.r,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Container(
                      height: 4.r,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildGridItem(Documents item, double _height) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: double.infinity,
      decoration: const BoxDecoration(
        //color: Colors.white,
        gradient: Palette.boxGradientSlide,
        //border: Border.all(width: 1, color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(300)),
                      child: CachedNetworkImage(
                        imageUrl: '${item.image}',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        width: double.infinity,
                        alignment: Alignment.topLeft,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  /* Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: _height * 0.035,
                      padding:
                          const EdgeInsets.only(left: 8, top: 1, bottom: 1),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black12),
                        //color: Colors.blueAccent,
                        gradient: Palette.createRoomGradient,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(9.0)),
                      ),
                      child: RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                              text: 'Ep ',
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          TextSpan(
                              text: '${item.detailDocuments![0].idDetail}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              )),
                        ]),
                      ),
                    ),
                  ) */
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Expanded(
                    child: Text(
                  '${item.name}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                )),
                Expanded(
                    child: Text(
                  '${item.nameOther}',
                  overflow: TextOverflow.ellipsis,
                )),
                Expanded(
                    child: Text(
                  '${item.dateText}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildList(double _height) {
    if (ctrHome.loadinghome.value == true) {
      return LoadingWidget();
    } else {
      return Column(
        children: [
          Expanded(
              flex: 9,
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentselect = index;
                      firts = false;
                    });
                  },
                  itemCount: ctrHome.popUpList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: BuildGridItem(ctrHome.popUpList[index], _height),
                    );
                  })),
          /*   Expanded(
            flex: 1,
            child: ListView.builder(
                shrinkWrap: true,
                //gridDelegate: SliverGridDelegate(),
                scrollDirection: Axis.horizontal,
                itemCount: ctrHome.popUpList.length,
                itemBuilder: (context, index) {
                  //print('index:${index} - currentselect:${currentselect}');
                  return buildIndicator(index == currentselect);
                }),
          ) */
        ],
      );
    }
  }

  Widget buildIndicator(bool isActive) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      child: isActive
          ? SvgPicture.asset(StringAsset.iconDotActive, semanticsLabel: 'ative')
          : SvgPicture.asset(StringAsset.iconDotInActive,
              semanticsLabel: 'inactive'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double _height = Responsive.height(context);
    return Obx(() {
      return buildList(_height);
    });
  }
}
