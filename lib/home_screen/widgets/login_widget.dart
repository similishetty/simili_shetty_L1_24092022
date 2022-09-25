import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppData.loginNow.toUpperCase()+" ",
                style: TextStyle(fontSize: 15, color: AppColors.headerTitle,fontWeight: FontWeight.w500),
                textScaleFactor: ResponsiveWidget.isLargeScreen(context)
                    ? 1.2
                    : ResponsiveWidget.isMediumScreen(context)
                        ? 1.1
                        : 1.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: getOutlinedBorder(),
                    enabledBorder: getOutlinedBorder(),
                    focusedBorder: getOutlinedBorder(),
                    filled: true,
                    hintStyle: TextStyle(color: AppColors.hintText),
                    hintText: AppData.emailHintText,
                    fillColor: AppColors.dividerColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: getOutlinedBorder(),
                    enabledBorder: getOutlinedBorder(),
                    focusedBorder: getOutlinedBorder(),
                    filled: true,
                    hintStyle: TextStyle(color: AppColors.hintText),
                    hintText: AppData.passwordHintText,
                    fillColor: AppColors.dividerColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                text: AppData.dontHaveAccount,
                children: [
                  TextSpan(text : AppData.createNow,
                      style: TextStyle(color: AppColors.buttonHover,decoration: TextDecoration.underline,fontWeight: FontWeight.w800))
                ]
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,8,8,12),
              child: CustomOutlinedButton(buttonTitle:AppData.loginNow),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder getOutlinedBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.transparent));
  }
}
