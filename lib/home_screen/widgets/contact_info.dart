
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
          Text(AppData.contactInfo, style:
          TextStyle(
            fontSize: !ResponsiveWidget.isSmallScreen(context)?20:18,
            fontWeight: FontWeight.bold,color: AppColors.headerTitle,),),
          buildContactInfo(Icons.call,AppData.number1),
          buildContactInfo(Icons.call,AppData.number2),
          buildContactInfo(Icons.email,AppData.email),
          buildContactInfo(Icons.location_on_rounded,AppData.address),

        ],
      ),
    );
  }
  Widget buildContactInfo(IconData icon ,String contactText){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: !ResponsiveWidget.isSmallScreen(context)?MainAxisAlignment.start:MainAxisAlignment.center,
        children: [
          Icon(icon,color: AppColors.primaryButtonColor,),
          Flexible(
            child: Text(contactText,  textAlign: TextAlign.center,
                style : TextStyle(
                  fontSize: !ResponsiveWidget.isSmallScreen(context)?15:14,
                  color: AppColors.grey,)),
          )
        ],
      ),
    );
  }
}
