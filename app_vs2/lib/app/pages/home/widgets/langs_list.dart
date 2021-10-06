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
    return Container(
      width: 50,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CoutryWidget(name: 'Truyen chu', iconName: "vi");
        },
        itemCount: 3,
      ),
    );
  }
}
