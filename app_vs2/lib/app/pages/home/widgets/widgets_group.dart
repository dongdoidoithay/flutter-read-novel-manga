import 'package:app_vs2/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'group/grid_item.dart';

class WidgetGroup extends StatelessWidget {
  const WidgetGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = Responsive.height(context);
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      margin: const EdgeInsets.only(top: 0),
      width: double.infinity,
      height: _height * 0.09,
      /*  decoration: const BoxDecoration(
        //color: Colors.blueAccent,
        gradient: Palette.storyGradient,
      ), */
      child: const ItemGroupWidget(),
    );
  }
}
