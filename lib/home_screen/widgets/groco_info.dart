
import 'package:flutter/material.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(AppData.groco),
      Text(AppData.loremSubTitle),
      Row(children: [
        buildActionButton(icon: Icons.facebook),
        buildActionButton(icon: Icons.facebook),
        buildActionButton(icon: Icons.facebook),
        buildActionButton(icon: Icons.facebook)
      ],)
    ],);
  }
  Widget buildActionButton({required IconData icon}){
    return  Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Card(
        elevation: 0,
        color: AppColors.headerActionBg,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon,color: AppColors.black,),
        ),
      ),
    );
  }

}
