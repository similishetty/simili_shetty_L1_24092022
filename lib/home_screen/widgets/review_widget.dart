
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/rating_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

import '../../utils/app_data.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  List<bool>isSelected = [false,false,false,false];

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 270,
        width: 900,
        child: Center(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context,int index){
                return   InkWell(
                  onTap: () {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        if (isSelected[i]) {
                          isSelected[i] = false;
                        }
                      }
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  child: SizedBox(
                    width: 300,
                    child: Card(
                     shape: isSelected[index]
                          ? RoundedRectangleBorder(
                          side: BorderSide(
                              color: AppColors.headerTitle, width: 2.0),
                          borderRadius: BorderRadius.circular(4.0))
                          : RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(4.0)),
                      elevation: 7.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        CircleAvatar(
                        radius: 48,
                        backgroundImage : AssetImage("assets/images/pic-${index+1}.png")),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(AppData.loremSubTitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              fontSize: !ResponsiveWidget.isSmallScreen(context)
                                  ? 13
                                  : 12,
                              color: AppColors.grey,
                            ),
                            ),
                          ),
                          Text(AppData.userName,
                            style: TextStyle(
                            fontSize: !ResponsiveWidget.isSmallScreen(context)
                                ? 20
                                : 17,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headerTitle,
                          ),),
                          const RatingWidget(),

                        ],),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
