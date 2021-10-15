import 'package:app_vs2/app/controllers/home_controller.dart';
import 'package:app_vs2/app/data/models/models.dart';
import 'package:app_vs2/core/utils/palette.dart';
import 'package:app_vs2/core/utils/utils.dart';
import 'package:app_vs2/core/widgets/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({Key? key}) : super(key: key);

  Widget slide(Documents item, double _height) {
    return Container(
      //padding: EdgeInsets.only(left: 4.0, right: 4.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        //gradient: Palette.createRoomGradient,
        border: Border.all(width: 1, color: Colors.red),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black12),
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
              child: CachedNetworkImage(
                imageUrl: '${item.image}',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Expanded(
            flex: 3,
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
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: _height * 0.09,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      //color: Colors.blueAccent,
                      gradient: Palette.createRoomGradient,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text('${item.detailDocuments![0].idDetail}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const Spacer(),
                ],
              )),
        ],
      ),
    );
  }

  Widget buildList(double _height) {
    PageController pageController = PageController(viewportFraction: 0.7);
    var ctrHome = Get.find<HomeController>();

    if (ctrHome.loadinghome.value == true) {
      return const LoadingWidget();
    } else {
      return PageView.builder(
          controller: pageController,
          itemCount: ctrHome.slideList.length,
          itemBuilder: (context, index) {
            return Container(
              child: slide(ctrHome.slideList[index], _height),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double _height = Responsive.height(context);
    return Obx(() => buildList(_height));
  }
}
