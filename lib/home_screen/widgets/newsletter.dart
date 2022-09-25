
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class Newsletter extends StatefulWidget {
  const Newsletter({Key? key}) : super(key: key);

  @override
  _NewsletterState createState() => _NewsletterState();
}

class _NewsletterState extends State<Newsletter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top : 8.0,bottom: 8.0),
            child: Text(AppData.newsletter,    style : TextStyle(
              fontSize: !ResponsiveWidget.isSmallScreen(context)?20:18,
              fontWeight: FontWeight.bold,color: AppColors.headerTitle,)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(AppData.subscribeTitle,style : TextStyle(
              fontSize: !ResponsiveWidget.isSmallScreen(context)?15:14,
              color: AppColors.grey,)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: getOutlinedBorder(),
                  enabledBorder: getOutlinedBorder(),
                  focusedBorder: getOutlinedBorder(),
                  filled: true,
                  hintStyle: TextStyle(color: AppColors.hintText),
                  hintText: AppData.yourEmailHintText,
                  fillColor: AppColors.dividerColor),
            ),
          ),
         //  TextFormField(),
          CustomOutlinedButton(buttonTitle: AppData.subscribeText),
          Padding(
            padding: const EdgeInsets.only(top : 8.0,bottom: 8.0),
            child: Image.asset("assets/images/payment.png"),
          )
        ],
      ),
    );
  }
  OutlineInputBorder getOutlinedBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.transparent));
  }
}
