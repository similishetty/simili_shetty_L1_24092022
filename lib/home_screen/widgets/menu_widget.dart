
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_text_button.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Column(children: getLinksListing(),));
  }

  List<Widget> getLinksListing() {
    return List.generate(
        AppData.headerLinks.length,
            (index) =>
            Padding(
                padding: const EdgeInsets.all(10),
                child: CustomTextButton(buttonTitle: AppData.headerLinks[index],)
            ));


  }

}
