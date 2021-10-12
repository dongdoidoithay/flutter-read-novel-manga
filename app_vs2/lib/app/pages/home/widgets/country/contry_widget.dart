import 'package:app_vs2/core/values/string_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoutryWidget extends StatelessWidget {
  final String name;
  final String iconName;

  const CoutryWidget({Key? key, required this.name, required this.iconName})
      : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    //check active

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, //
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: iconShow(iconName),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Expanded(
            flex: 5,
            child: Text('$name'),
          )
        ],
      ),
    );
  }
}
