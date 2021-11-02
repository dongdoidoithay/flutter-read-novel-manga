import 'package:app_vs2/app/data/models/models.dart';
import 'package:app_vs2/core/utils/palette.dart';
import 'package:app_vs2/core/values/string_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CoutryWidget extends StatelessWidget {
  final LangModel item;
  final LangModel itemselect;
  bool active = false;

  CoutryWidget({
    Key? key,
    required this.item,
    required this.itemselect,
  }) : super(key: key);

  Widget iconShow(iconName) {
    switch (iconName) {
      case "vn":
      case "vi":
        return SvgPicture.asset(StringAsset.iconFlagVn,
            semanticsLabel: '$iconName');
      case "us":
      case "en":
        return SvgPicture.asset(StringAsset.iconFlagUs,
            semanticsLabel: '$iconName');
      default:
        return Container();
    }
  }

  Color getActive() {
    if (item.id == itemselect.id && item.type == itemselect.type) {
      active = true;
      if (!Get.isDarkMode) {
        return Palette.facebookBlue;
      } else {
        return Palette.grey_20;
      }
    } else {
      return Get.theme.scaffoldBackgroundColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      /*  decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.white),
        ),
      ), */
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: iconShow(item.icon),
          ),
          SizedBox(
            width: 5.r,
          ),
          Expanded(
            flex: 5,
            child: Text(
              '${item.name}',
              style: Get.textTheme.caption!.copyWith(
                fontWeight: active ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
