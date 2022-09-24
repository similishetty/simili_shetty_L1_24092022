
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

import '../../common_widget/custom_outlined_button.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 350,
      width: 900,
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return SizedBox(
                width: 225,
                child: Card(
                  elevation: 7.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/cat-${index+1}.png"),
                      Text(AppData.categoriesTitle[index]),
                      Text(AppData.loremSubTitle),
                      CustomOutlinedButton(buttonTitle: AppData.readMore)
                    ],),
                ),
              );
            }),
      ),
    );
  }
}
