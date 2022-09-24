
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class QuickLinks extends StatefulWidget {
  const QuickLinks({Key? key}) : super(key: key);

  @override
  _QuickLinksState createState() => _QuickLinksState();
}

class _QuickLinksState extends State<QuickLinks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: getLinks(),)

      ],
    );
  }

  List<Widget> getLinks(){
    return List.generate(
        AppData.headerLinks.length,
            (index) {
             return  Column(
                children: [
                  if(index==0)Text(AppData.quickLinks),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.arrow_forward, color: AppColors.primaryButtonColor,),
                      onPressed: () {},
                      label: Text(AppData.headerLinks[index],
                        style: TextStyle(color: AppColors.headerLinks),
                      ),
                    ),
                  ),
                ],
              );
            }
    );
  }
}
