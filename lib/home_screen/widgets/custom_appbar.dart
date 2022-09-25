import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_text_button.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class CustomAppbar extends StatefulWidget  implements PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  _CustomAppbarState createState() => _CustomAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: buildLogo(),
      title: buildHeaderLinks(),
      actions: getLinksListing(),
    );
  }
  Widget buildLogo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.shopping_bag,color: AppColors.primaryButtonColor,
            size: 24
        ),
        Text(AppData.headerTitle,
          style: TextStyle(
              color: AppColors.headerTitle,
              fontWeight: FontWeight.w600,
              fontSize: 20),)
      ],
    );

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
