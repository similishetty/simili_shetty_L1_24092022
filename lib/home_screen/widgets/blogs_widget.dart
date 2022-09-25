import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

import '../../common_widget/custom_outlined_button.dart';
import '../../utils/app_data.dart';

class BlogsWidget extends StatefulWidget {
  const BlogsWidget({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<BlogsWidget> {
  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 440,
        width: 900,
        child: Center(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context,int index){
                return SizedBox(
                  width: 300,
                  child: Card(
                    elevation: 7.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/blog-${index+1}.jpg"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person,color: AppColors.primaryButtonColor,),
                                  Text(AppData.byAdmin)
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today,color: AppColors.primaryButtonColor,),
                                  Text(AppData.date)
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,0,8,8),
                          child: Divider(color: AppColors.dividerColor,thickness: 1.2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text(AppData.blogsTitle,style: TextStyle(
                            fontSize: !ResponsiveWidget.isSmallScreen(context)
                                ? 20
                                : 17,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headerTitle,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:5,bottom: 5,left: 5),
                          child: Text(AppData.loremSubTitle2,
                            style: TextStyle(
                              fontSize: !ResponsiveWidget.isSmallScreen(context)
                                  ? 13
                                  : 12,
                              color: AppColors.grey,
                            ),),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                          child: CustomOutlinedButton(buttonTitle: AppData.readMore),
                        )
                      ],),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
