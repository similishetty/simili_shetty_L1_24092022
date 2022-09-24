
import 'package:flutter/material.dart';

import '../../common_widget/custom_outlined_button.dart';
import '../../utils/app_data.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        productView(initialIndex : 1),
        productView(initialIndex: 5)
      ],
    );
  }

  Widget productView({required int initialIndex}){
    return SizedBox(
      height: 400,
      width: 900,
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return SizedBox(
                width: 300,
                child: Card(
                 // elevation: 7.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/product-${initialIndex+index}.png"),
                      Text(AppData.productTile[initialIndex+index-1]),
                      Text(AppData.loremSubTitle),
                      CustomOutlinedButton(buttonTitle: AppData.readMore)
                    ],),
                ),
              );
            }),
      ),
    );
  }
}
