import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class  CustomTextButton extends StatefulWidget {

  const CustomTextButton({Key? key,required this.buttonTitle}) : super(key: key);
  final buttonTitle;
  @override
  _CustomTextButtonState createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onHover: (value){
          setState(() {
            onHover = value;
          });
        },
        onPressed: (){
        }, child: Text(widget.buttonTitle,style: TextStyle(color:  onHover? AppColors.buttonHover:AppColors.headerLinks),));
  }
}