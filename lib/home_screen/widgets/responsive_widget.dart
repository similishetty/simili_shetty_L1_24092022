
import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key? key, required this.largeScreen, required this.mediumScreen, required this.smallScreen}) : super(key: key);
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return largeScreen;
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return mediumScreen;
      } else {
        return smallScreen;
      }
    });
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }
}

