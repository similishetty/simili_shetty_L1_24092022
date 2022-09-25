
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class  CustomOutlinedButton extends StatefulWidget {

  const CustomOutlinedButton({Key? key,required this.buttonTitle}) : super(key: key);
  final String buttonTitle;
  @override
  _CustomOutlinedButtonState createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: onHover? AppColors.primaryButtonColor:AppColors.white,
            padding: const EdgeInsets.all(15),
            side:  BorderSide(width: 1.0, color: AppColors.headerLinks),
          ),
          onHover: (value){
            setState(() {
              onHover = value;
            });
          },
          onPressed: (){

          }, child: Text(widget.buttonTitle,style: TextStyle(color: AppColors.headerLinks),));
    }
  }

