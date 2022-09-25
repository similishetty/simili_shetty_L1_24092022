
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/rating_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

import '../../common_widget/custom_outlined_button.dart';
import '../../utils/app_data.dart';
import 'responsive_widget.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  List<bool>isSelected = [false,false,false,false,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          productView(initialIndex : 1),
          productView(initialIndex: 5)
        ],
      ),
    );
  }

  Widget productView({required int initialIndex}){
    return SizedBox(
      height: 300,
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return InkWell(
                onTap: (){
                  if(initialIndex==1){
                    setState(() {
                      for(int i = 0;i<isSelected.length;i++){
                        if(isSelected[i]){
                          isSelected[i] =false;
                        }
                      }
                      isSelected[initialIndex+index-1] = !isSelected[initialIndex+index-1];
                    });
                  }
                  if(initialIndex==5){
                    setState(() {
                      for(int i = 0;i<isSelected.length;i++){
                        if(isSelected[i]){
                          isSelected[i] =false;
                        }
                      }
                      isSelected[initialIndex+index-1] = !isSelected[initialIndex+index-1];
                    });
                  }

                },
                child: SizedBox(
                  width: 250,
                  child: Card(
                    shape: isSelected[initialIndex+index-1]
                        ? RoundedRectangleBorder(
                        side:  BorderSide(color: AppColors.headerTitle, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0))
                        :  RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0)),
                    elevation: 7.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                            child: Image.asset("assets/images/product-${initialIndex+index}.png")),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(AppData.productTile[initialIndex+index-1],
                            textAlign: TextAlign.center,
                            style:
                          TextStyle(
                            fontSize: !ResponsiveWidget.isSmallScreen(context)?20:17,
                            fontWeight: FontWeight.bold,color: AppColors.headerTitle,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("\$4.99 - \$10.99",
                            textAlign: TextAlign.center,
                            style : TextStyle(
                              fontSize: !ResponsiveWidget.isSmallScreen(context)?15:14,
                              color: AppColors.grey,),),
                        ),
                        const Padding(
                          padding:  EdgeInsets.all(2.0),
                          child:  RatingWidget(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomOutlinedButton(buttonTitle: AppData.addToCart),
                        ),
                        const SizedBox(height: 30,)
                      ],),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
