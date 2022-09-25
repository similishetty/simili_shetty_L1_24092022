
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
      } else if (constraints.maxWidth > 810 && constraints.maxWidth < 1200) {
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

    return MediaQuery.of(context).size.width < 810;
  }
  static bool isExtraSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <400;
  }
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 810 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static double getTextScaleFactor(BuildContext context) {
    double textScaleFactor = 1.0;
    if(isLargeScreen(context)){
      textScaleFactor = 1.5;
    }
    if(isMediumScreen(context)){
      textScaleFactor = 1.3;
    }
    return textScaleFactor;
  }

  static double getAppBarActionSize(BuildContext context) {
    double actionWidth = 200 ;
    if(isLargeScreen(context)){
      actionWidth = MediaQuery.of(context).size.width/2.5;
    }
    if(isMediumScreen(context)){
      actionWidth = MediaQuery.of(context).size.width/2.5;
    }
    if(isSmallScreen(context)){
      actionWidth = MediaQuery.of(context).size.width/ 1.5;
    }
    return actionWidth;
  }
  static double getPosition(BuildContext context) {
    double position = 0;
    if(isLargeScreen(context)){
      position = 60;
    }
    if(isMediumScreen(context)){
      position = 60;
    }
    if(isSmallScreen(context)){
      if(isExtraSmallScreen(context)) {
        position = 110;
      }else{
        position = 100;
      }
    }
    return position;
  }

}

