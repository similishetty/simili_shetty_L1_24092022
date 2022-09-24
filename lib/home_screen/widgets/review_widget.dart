
import 'package:flutter/material.dart';

import '../../common_widget/custom_outlined_button.dart';
import '../../utils/app_data.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 250,
      width: 900,
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return SizedBox(
                width: 300,
                child: Card(
                  elevation: 7.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                    radius: 48,
                    backgroundImage : AssetImage("assets/images/pic-${index+1}.png")),
                      Text(AppData.loremSubTitle),
                      Text(AppData.userName),
                    ],),
                ),
              );
            }),
      ),
    );
  }
}
