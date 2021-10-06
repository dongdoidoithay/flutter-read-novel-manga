import 'package:flutter_svg/svg.dart';

import '/core/utils/responsive.dart';

import '/app/controllers/home_controller.dart';
import '/core/widgets/loading_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    var ctrHome = Get.find<HomeController>();
    //ctrHome.getContry();
    final bool isDesktop = Responsive.isDesktop(context);
    return Obx(() {
      return Card(
        margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
        elevation: isDesktop ? 1.0 : 0.0,
        shape: isDesktop
            ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            : null,
        child: Container(
          height: 60.0,
          color: Colors.white,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 4.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: ctrHome.langList.length,
            itemBuilder: (BuildContext context, int index) {
              if (ctrHome.langList.length == 0)
                return LoadingWidget();
              else {
                final lang = ctrHome.langList[index];
                // if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(lang.name!),
                );
              }
              //}
              /* return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  radius: 20.0,
                  //backgroundColor: Palette.facebookBlue,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.grey[200],
                    backgroundImage:
                        const CoutryWidget(name: "Novels", iconName: "vi"),
                  ),
                ),
              ); */
            },
          ),
        ),
      );
    });
  }
}
