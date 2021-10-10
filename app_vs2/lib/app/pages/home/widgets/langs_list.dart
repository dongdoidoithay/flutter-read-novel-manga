import '/core/widgets/loading_widget.dart';

import '/core/utils/responsive.dart';
import '/app/controllers/home_controller.dart';
import 'package:get/get.dart';

import '/app/data/models/lang_model.dart';
import 'package:flutter/material.dart';

import 'country/contry_widget.dart';

class LangsList extends StatelessWidget {
  final List<LangModel> lstlang;
  const LangsList({
    required this.lstlang,
    Key? key,
  }) : super(key: key);
  Widget item(name, icon) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blueAccent),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 130,
      child: CoutryWidget(iconName: icon, name: name),
    );
  }

  @override
  Widget build(BuildContext context) {
    var ctrHome = Get.find<HomeController>();
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final double _width = Responsive.width(context);
    final double _height = Responsive.height(context);
    return Obx(() {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          width: double.infinity,
          height: _height * 0.07,
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
            ),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ctrHome.langList.length,
            itemBuilder: (BuildContext context, int index) {
              if (ctrHome.loading.value == true) {
                return const LoadingWidget();
              } else {
                final lang = ctrHome.langList[index];
                return item(lang.name, lang.icon);
              }
            },
          ));
    });
  }
}
