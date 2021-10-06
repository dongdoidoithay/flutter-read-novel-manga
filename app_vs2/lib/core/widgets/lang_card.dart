import '/app/data/models/lang_model.dart';
import '/core/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';

class LangCard extends StatelessWidget {
  final LangModel lang;

  const LangCard({
    Key? key,
    required this.lang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LangsAvatar(
            imageUrl: lang.icon.toString(),
            isActive: false,
            hasBorder: false,
          ),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              lang.name.toString(),
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
