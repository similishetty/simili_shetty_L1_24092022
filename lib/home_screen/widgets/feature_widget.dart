import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';


class FeatureWidget extends StatefulWidget {
  const FeatureWidget({Key? key}) : super(key: key);

  @override
  _FeatureWidgetState createState() => _FeatureWidgetState();
}

class _FeatureWidgetState extends State<FeatureWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 900,
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
          scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context,int index){
              return SizedBox(
                width: 300,
                child: Card(
                  elevation: 7.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset("assets/images/feature-img-${index+1}.png"),
                    Text(AppData.featuresTitle[index]),
                    Text(AppData.loremSubTitle),
                    CustomOutlinedButton(buttonTitle: AppData.addToCart)
                  ],),
                ),
              );
            }),
      ),
    );
  }

}
