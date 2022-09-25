import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class  CustomIconButton extends StatefulWidget {
  final IconData icon;
  const CustomIconButton({Key? key,required this.icon}) : super(key: key);
  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(AppColors.transparent) //to hide splash color
        ),
        onHover: (value){
          setState(() {
            onHover = value;
          });
        },
        onPressed: (){
        }, child: Icon(widget.icon,color: onHover?AppColors.primaryButtonColor:AppColors.grey,),);
  }
}