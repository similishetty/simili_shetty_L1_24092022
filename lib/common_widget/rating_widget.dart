
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if(index==4) {
          return Icon(Icons.star_half,color: AppColors.primaryButtonColor);
        } else {
          return Icon(Icons.star,color: AppColors.primaryButtonColor);
        }
      })
    );
  }
}
