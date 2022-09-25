import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

class CustomWidget{

  static Widget menuTitle(String title,String subtitle,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(fontSize: !ResponsiveWidget.isSmallScreen(context)?25:20,color: AppColors.headerTitle,fontWeight: FontWeight.bold),),
          const SizedBox(width: 10,),
          Container(color: AppColors.primaryButtonColor,
              padding: const EdgeInsets.all(10),
              child: Text(subtitle,style:
              TextStyle(fontSize: !ResponsiveWidget.isSmallScreen(context)?25:20,color: AppColors.white,fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}