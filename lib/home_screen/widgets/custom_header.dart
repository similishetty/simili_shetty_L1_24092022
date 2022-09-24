
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';

import '../../common_widget/custom_text_button.dart';

class CustomHeaders extends StatefulWidget {
  const CustomHeaders({Key? key}) : super(key: key);

  @override
  _CustomHeadersState createState() => _CustomHeadersState();
}

class _CustomHeadersState extends State<CustomHeaders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: AppColors.white,
       margin: EdgeInsets.zero,
       // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildHeader(),
        ),
      ),
    );
  }

  Widget buildHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        buildLogo(),
        buildHeaderLinks(),
        buildHeaderActions(context)],
    );
  }

 Widget buildHeaderActions(BuildContext context) {
    return Row(
      children: [
        if (ResponsiveWidget.isSmallScreen(context)) buildActionButton(icon: Icons.menu),
        buildActionButton(icon: Icons.search),
        buildActionButton(icon: Icons.shopping_cart),
        buildActionButton(icon: Icons.person)
      ],
    );
 }

  Widget buildLogo() {
    return Text(AppData.headerTitle,style: TextStyle(color: AppColors.headerTitle,fontWeight: FontWeight.bold,fontSize: 20),);

  }

  Widget buildHeaderLinks() {
    if (!ResponsiveWidget.isSmallScreen(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: getLinksListing()
      );
    } else{
      return Container();
    }
  }

  List<Widget> getLinksListing() {
    return List.generate(
        AppData.headerLinks.length,
            (index) =>
                Padding(
                  padding: const EdgeInsets.only(left : 18),
                  child: CustomTextButton(buttonTitle: AppData.headerLinks[index],)
                ));


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


