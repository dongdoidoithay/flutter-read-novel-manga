import 'package:app_vs2/core/values/string_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoutryWidget extends StatelessWidget {
  final String? name;
  final String? iconName;
  const CoutryWidget({Key? key, this.name, this.iconName}) : super(key: key);

  Widget iconShow(iconName) {
    switch (iconName) {
      case "vn":
      case "vi":
        return SvgPicture.asset(StringAsset.iconFlagVn,
            semanticsLabel: '${iconName}');
      case "us":
      case "en":
        return SvgPicture.asset(StringAsset.iconFlagVn,
            semanticsLabel: '${iconName}');
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      width: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /* Expanded(
            flex: 1,
            child: iconShow(iconName),
          ), */
          Expanded(
            flex: 5,
            child: Text('${name}'),
          )
        ],
      ),
    );
  }
}
