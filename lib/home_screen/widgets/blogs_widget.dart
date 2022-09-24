import 'package:flutter/material.dart';
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
    return     SizedBox(
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
                      Text(AppData.blogsTitle),
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
