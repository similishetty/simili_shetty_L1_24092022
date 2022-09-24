
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class Newsletter extends StatefulWidget {
  const Newsletter({Key? key}) : super(key: key);

  @override
  _NewsletterState createState() => _NewsletterState();
}

class _NewsletterState extends State<Newsletter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppData.newsletter),
        Text(AppData.subscribeTitle),
       //  TextFormField(),
        CustomOutlinedButton(buttonTitle: AppData.subscribeText),
        Image.asset("assets/images/payment.png")
      ],
    );
  }
}
