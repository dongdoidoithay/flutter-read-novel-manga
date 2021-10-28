import 'package:app_vs2/core/utils/responsive.dart';
import 'package:app_vs2/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
        height: _height * 0.09,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          gradient: Palette.createRoomGradient,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Text("image")),
                  Text(
                    'genres',
                    style: Get.theme.textTheme.subtitle1!.copyWith(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Text(
                'genres',
                style: Get.theme.textTheme.subtitle1!.copyWith(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Text(
                'genres',
                style: Get.theme.textTheme.subtitle1!.copyWith(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Text(
                'genres',
                style: Get.theme.textTheme.subtitle1!.copyWith(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
