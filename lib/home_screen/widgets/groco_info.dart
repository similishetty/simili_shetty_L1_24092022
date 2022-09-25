
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

import '../../utils/app_colors.dart';

class GrocoInfo extends StatefulWidget {
  const GrocoInfo({Key? key}) : super(key: key);

  @override
  _GrocoInfoState createState() => _GrocoInfoState();
}

class _GrocoInfoState extends State<GrocoInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?MainAxisAlignment.start:MainAxisAlignment.center,
          children: [
            Text(AppData.groco,
              style:
              TextStyle(
                fontSize: !ResponsiveWidget.isSmallScreen(context)?20:18,
                fontWeight: FontWeight.bold,color: AppColors.headerTitle,),),
            Icon(Icons.shopping_bag,color: AppColors.primaryButtonColor,
                size: 24
            ),
          ],
        ),
        Padding(
          padding: !ResponsiveWidget.isSmallScreen(context)?const EdgeInsets.only(top:8,bottom: 8):const EdgeInsets.all(8),
          child: Text(AppData.loremSubTitle2,
              textAlign: !ResponsiveWidget.isSmallScreen(context)?TextAlign.start:TextAlign.center,
              style : TextStyle(
                fontSize: !ResponsiveWidget.isSmallScreen(context)?15:14,
                color: AppColors.grey,)
          ),
        ),
        Row(
          mainAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?MainAxisAlignment.start:MainAxisAlignment.center,
          children: [
          buildActionButton(icon: Icons.facebook),
          buildActionButton(icon: Icons.facebook),
          buildActionButton(icon: Icons.facebook),
          buildActionButton(icon: Icons.facebook)
        ],)
      ],),
    );
  }
  Widget buildActionButton({required IconData icon}){
    return  Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        elevation: 0,
        color: AppColors.headerActionBg,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(icon,color: AppColors.black,size: 20,),
        ),
      ),
    );
  }

}
