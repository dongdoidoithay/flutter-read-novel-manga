import 'package:app_vs2/app/data/models/models.dart';
import 'package:app_vs2/core/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WidgetGridItem extends StatelessWidget {
  final Documents item;
  const WidgetGridItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = Responsive.height(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      //width:_height * 0.12,
      height: _height * 0.19,
      decoration: const BoxDecoration(
        //color: Colors.white,
        gradient: Palette.boxNewUpdateGridGradient,
        // border: Border.all(width: 1, color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
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
                const SizedBox(height: 9),
                Expanded(
                    child: Text(
                  '${item.name}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Palette.grey_95),
                )),
                Expanded(
                    child: Text(
                  '${item.nameOther}',
                  overflow: TextOverflow.ellipsis,
                )),
                Expanded(
                    child: Text(
                  '${item.dateText}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.grey_100_,
                  ),
                )),
                Expanded(
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: 'Chapter: ',
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
                            color: Palette.facebookBlue,
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
