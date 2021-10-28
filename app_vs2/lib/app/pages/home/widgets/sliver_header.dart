import 'dart:math';
import 'package:app_vs2/app/controllers/home_controller.dart';
import 'package:app_vs2/core/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// 1
class SliverSubHeader extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const SliverSubHeader(
      {Key? key, required this.text, required this.backgroundColor})
      : assert(text != null),
        assert(backgroundColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctrHome = Get.find<HomeController>();
    // 1
    return SliverPersistentHeader(
      pinned: false,
      delegate: _SliverAppBarDelegate(
        // 2
        minHeight: 20,
        maxHeight: 30,
        // 3
        child: Container(
          //color: backgroundColor,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.primary,
                    border: Border.all(
                      color: Palette.facebookBlue,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    text,
                    style: Get.textTheme.caption!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Ink(
                  padding: EdgeInsets.only(bottom: 3.r),
                  child: IconButton(
                    padding: EdgeInsets.only(top: 0.r),
                    icon: const Icon(Icons.grid_4x4_sharp),
                    color: Get.theme.highlightColor,
                    onPressed: () {
                      ctrHome.modeview.value = 1;
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Ink(
                  child: IconButton(
                    padding: EdgeInsets.only(top: 0.r),
                    icon: const Icon(Icons.list_sharp),
                    color: Get.theme.highlightColor,
                    onPressed: () {
                      ctrHome.modeview.value = 0;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  // 2
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  // 3
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
