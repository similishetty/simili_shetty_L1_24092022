
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?CrossAxisAlignment.start:CrossAxisAlignment.center,
            children: getLinks(),)

        ],
      ),
    );
  }

  List<Widget> getLinks(){
    return List.generate(
        AppData.headerLinks.length,
            (index) {
             return  Column(
               crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?CrossAxisAlignment.start:CrossAxisAlignment.center,
               children: [
                  if(index==0)
                    Text(AppData.quickLinks,
                        style : TextStyle(
                    fontSize: !ResponsiveWidget.isSmallScreen(context)?20:18,
                    fontWeight: FontWeight.bold,color: AppColors.headerTitle,)
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.arrow_forward, color: AppColors.primaryButtonColor,),
                      onPressed: () {},
                      label: Text(AppData.headerLinks[index],
                          style : TextStyle(
                            fontSize: !ResponsiveWidget.isSmallScreen(context)?15:14,
                            color: AppColors.grey,)
                      ),
                    ),
                  ),
                ],
              );
            }
    );
  }
}
