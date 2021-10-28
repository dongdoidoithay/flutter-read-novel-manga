import 'package:app_vs2/app/data/models/models.dart';
import 'package:app_vs2/core/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WidgetListItem extends StatelessWidget {
  final Documents item;
  const WidgetListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      width: double.infinity,
      height: 0.12.sh,
      decoration: const BoxDecoration(
        //color: Colors.white,
        gradient: Palette.boxNewUpdateGradient,
        // border: Border.all(width: 1, color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: CachedNetworkImage(
                  imageUrl: '${item.image}',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 9.0),
                Expanded(
                  child: Text(
                    '${item.name}',
                    overflow: TextOverflow.ellipsis,
                    style: Get.textTheme.caption!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                    child: Text(
                  '${item.nameOther}',
                  overflow: TextOverflow.ellipsis,
                  style:
                      Get.textTheme.overline!.copyWith(fontFamily: "Dancing"),
                )),
                Expanded(
                    child: Text(
                  '${item.dateText}',
                  style: Get.textTheme.overline!.copyWith(
                    fontFamily: "Dancing",
                    color: Get.theme.focusColor,
                  ),
                )),
                Expanded(
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
                          text: item.detailDocuments!.length > 0
                              ? '${item.detailDocuments![0].idDetail}'
                              : '-.-',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    ]),
                  ),
                ),
                const SizedBox(height: 9),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
