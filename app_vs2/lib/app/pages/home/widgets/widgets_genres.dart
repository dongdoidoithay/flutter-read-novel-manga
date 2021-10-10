import 'package:app_vs2/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class GenresList extends StatelessWidget {
  const GenresList({
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
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: double.infinity,
      height: _height * 0.12,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        gradient: LinearGradient(
          colors: [Colors.red, Colors.cyan],
        ),
      ),
      child: const Text('genres'),
    );
  }
}
