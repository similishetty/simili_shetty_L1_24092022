
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_icon_button.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       width: ResponsiveWidget.isLargeScreen(context)?300:ResponsiveWidget.isMediumScreen(context)?270:250,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: AppColors.white,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          cartItem(),
          totalItem(),
          chekoutButton(),
          const SizedBox(height: 10,)

        ],)
      ),
    );
  }
  Widget cartItem(){
    return  ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/cart-img-${index+1}.png",width: 50,height: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(AppData.cartItem[index],
                      textScaleFactor:
                      ResponsiveWidget.isLargeScreen(context)?1.2:
                      ResponsiveWidget.isMediumScreen(context)?1.1:0.9,
                      style: TextStyle(fontSize: 14,color: AppColors.headerTitle,fontWeight: FontWeight.w600),),
                    Text("\$4.99  Qty: 1",textScaleFactor:
                    ResponsiveWidget.isLargeScreen(context)?1.2:
                    ResponsiveWidget.isMediumScreen(context)?1.1:0.9,
                      style: TextStyle(fontSize: 14,color: AppColors.grey),),
                  ],),
                const CustomIconButton( icon: Icons.delete,),
              ],
            ),
          );


        });
  }

 Widget totalItem() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
      child: Text("Total : \$19.69",
        textAlign: TextAlign.center,
        textScaleFactor:
        ResponsiveWidget.isLargeScreen(context)?1.2:
        ResponsiveWidget.isMediumScreen(context)?1.1:1.0,
        style: TextStyle(fontSize: 16,color: AppColors.headerTitle,),
      ),
    );
 }

 Widget  chekoutButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomOutlinedButton(buttonTitle: AppData.checkout),
    );
 }

}
