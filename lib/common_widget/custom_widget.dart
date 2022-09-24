import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

class CustomWidget{

  static Widget menuTitle(String title,String subtitle){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        Container(color: AppColors.primaryButtonColor,
            padding: const EdgeInsets.all(10),
            child: Text(subtitle))
      ],
    );
  }
}