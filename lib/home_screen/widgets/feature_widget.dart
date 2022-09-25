import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

class FeatureWidget extends StatefulWidget {
  const FeatureWidget({Key? key}) : super(key: key);

  @override
  _FeatureWidgetState createState() => _FeatureWidgetState();
}

class _FeatureWidgetState extends State<FeatureWidget> {
  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isExtraSmallScreen(context)
        ? SizedBox(
         width: 300,
          child: ListView.builder(
            padding: EdgeInsets.zero,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return
                  GestureDetector(
                  onTap: () {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        if (isSelected[i]) {
                          isSelected[i] = false;
                        }
                      }
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  child: Card(
                    shape: isSelected[index]
                        ? RoundedRectangleBorder(
                            side: BorderSide(
                                color: AppColors.headerTitle, width: 2.0),
                            borderRadius: BorderRadius.circular(4.0))
                        : RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(4.0)),
                    elevation: 7.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              "assets/images/feature-img-${index + 1}.png"),
                        ),
                        Text(
                          AppData.featuresTitle[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: !ResponsiveWidget.isSmallScreen(context)
                                ? 20
                                : 17,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headerTitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppData.loremSubTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: !ResponsiveWidget.isSmallScreen(context)
                                  ? 13
                                  : 12,
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomOutlinedButton(buttonTitle: AppData.readMore),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
        : SizedBox(
            height: 350,
            width: 950,
            child: Center(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          for (int i = 0; i < isSelected.length; i++) {
                            if (isSelected[i]) {
                              isSelected[i] = false;
                            }
                          }
                          isSelected[index] = !isSelected[index];
                        });
                      },
                      child: SizedBox(
                        width: 300,
                        child: Card(
                          shape: isSelected[index]
                              ? RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: AppColors.headerTitle, width: 2.0),
                                  borderRadius: BorderRadius.circular(4.0))
                              : RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(4.0)),
                          elevation: 7.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Image.asset(
                                      "assets/images/feature-img-${index + 1}.png")),
                              Text(
                                AppData.featuresTitle[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:
                                      !ResponsiveWidget.isSmallScreen(context)
                                          ? 20
                                          : 17,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.headerTitle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  AppData.loremSubTitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        !ResponsiveWidget.isSmallScreen(context)
                                            ? 13
                                            : 12,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ),
                              Flexible(
                                  child: CustomOutlinedButton(
                                      buttonTitle: AppData.readMore))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
  }
}
