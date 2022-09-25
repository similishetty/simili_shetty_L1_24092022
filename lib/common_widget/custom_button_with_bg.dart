
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

class CustomButtonWithBg extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;
  const CustomButtonWithBg({Key? key, required this.icon, required this.onTap}) : super(key: key);

  @override
  _CustomButtonWithBgState createState() => _CustomButtonWithBgState();
}

class _CustomButtonWithBgState extends State<CustomButtonWithBg> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.onTap,
      onHover: (value){
        setState(() {
          onHover = value;
        });
      },
      child: Card(
        elevation: 0,
        color: onHover?AppColors.primaryButtonColor:AppColors.headerActionBg,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(widget.icon,color: onHover?AppColors.white: AppColors.black,),
        ),
      ),
    );
  }
}
