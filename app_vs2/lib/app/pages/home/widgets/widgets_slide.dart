import 'package:app_vs2/app/data/models/models.dart';
import 'package:app_vs2/app/pages/home/widgets/slide/slide_widget.dart';
import 'package:app_vs2/core/utils/responsive.dart';
import 'package:app_vs2/core/utils/utils.dart';
import 'package:flutter/material.dart';

class SlideList extends StatelessWidget {
  const SlideList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final double _width = Responsive.width(context);
    final double _height = Responsive.height(context);

    //print('--> count');
    //print(items.length);
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      margin: const EdgeInsets.only(top: 0),
      width: double.infinity,
      height: _height * 0.14,
      /*  decoration: const BoxDecoration(
        //color: Colors.blueAccent,
        gradient: Palette.storyGradient,
      ), */
      child: const SlideWidget(),
    );
  }
}
