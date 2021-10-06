import '/core/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'components/home_desktop.dart';
import 'components/home_moblie.dart';
import 'components/home_tablet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: HomePageMobile(scrollController: _trackingScrollController),
          desktop: HomePageDesktop(scrollController: _trackingScrollController),
          tablet: HomePageTablet(scrollController: _trackingScrollController),
        ),
      ),
    );
  }
}
