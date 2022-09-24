
import 'package:flutter/material.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppData.contactInfo),
        buildContactInfo(Icons.call,AppData.number1),
        buildContactInfo(Icons.call,AppData.number2),
        buildContactInfo(Icons.email,AppData.email),
        buildContactInfo(Icons.location_on_rounded,AppData.address),

      ],
    );
  }
  Widget buildContactInfo(IconData icon ,String contactText){
    return Row(
      children: [
        Icon(icon,color: AppColors.primaryButtonColor,),
        Text(contactText)
      ],
    );
  }
}
