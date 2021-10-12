import 'package:app_vs2/core/utils/palette.dart';
import 'package:flutter/material.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({Key? key}) : super(key: key);

  Widget slide() {
    return Container(
      //padding: EdgeInsets.only(left: 4.0, right: 4.0),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        //gradient: Palette.createRoomGradient,
        border: Border.all(width: 1, color: Colors.red),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 2, child: Text("image")),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 15),
                Expanded(child: Text("Ten")),
                Expanded(child: Text("genres")),
                Expanded(child: Text("date update")),
              ],
            ),
          ),
          const Expanded(flex: 1, child: Text("1250-2")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.7);
    return PageView.builder(
        controller: pageController,
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            color: index % 2 == 0 ? Colors.green : Colors.blue[700],
            child: slide(),
          );
        });
  }
}
