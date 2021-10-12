import 'package:app_vs2/app/pages/home/widgets/slide/slide_widget.dart';
import 'package:app_vs2/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class SlideList extends StatelessWidget {
  const SlideList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final double _width = Responsive.width(context);
    final double _height = Responsive.height(context);
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      margin:
          const EdgeInsets.only(right: 5.0, left: 5.0, bottom: 12.0, top: 0),
      width: double.infinity,
      height: _height * 0.17,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        gradient: LinearGradient(
          colors: [Colors.red, Colors.cyan],
        ),
      ),
      child: const SlideWidget(),
    );
  }
}
