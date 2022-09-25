import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_outlined_button.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/blogs_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/categories_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/contact_info.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/feature_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/groco_info.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/product_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/quick_links.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/review_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';

import '../../common_widget/custom_widget.dart';
import 'newsletter.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  _CustomBodyState createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: [
            buildInfoView(),
            featureView(),
            productView(),
           categoriesView(),
            reviewView(),
             blogsView(),
            bottomView()
      ],
    ),
        );
  }

  Widget buildInfoView() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/banner-bg.webp",
          fit: BoxFit.fill,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Fresh And",
                style: TextStyle(
                    fontSize: !ResponsiveWidget.isSmallScreen(context)?25:18,fontWeight: FontWeight.bold,color: AppColors.headerTitle,),
                children: [
                  TextSpan(text: " Organic",style:
                  TextStyle(
                    fontSize: !ResponsiveWidget.isSmallScreen(context)?25:18,fontWeight: FontWeight.bold,color: AppColors.primaryButtonColor,),),
                  TextSpan(text: " Products For You",style : TextStyle(
                    fontSize: !ResponsiveWidget.isSmallScreen(context)?25:18,fontWeight: FontWeight.bold,color: AppColors.headerTitle,),)
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppData.loremSubTitle,
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomOutlinedButton(buttonTitle: AppData.shopNow),
            )
          ],
        ),
      ],
    );
  }

  Widget featureView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomWidget.menuTitle(AppData.ourText,AppData.featuresText,context),
        const FeatureWidget(),
      ],
    );
  }

  Widget productView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.ourText,AppData.productText,context), const ProductWidget()],
    );
  }

  Widget categoriesView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.ourText,AppData.categoriesText,context), const CategoriesWidget()],
    );
  }

  Widget reviewView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.customerText,AppData.reviewText,context), const ReviewWidget()],
    );
  }
  Widget blogsView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.ourText,AppData.blogsText,context), const BlogsWidget()],
    );
  }

  Widget bottomView() {
  return Container(
    color: AppColors.white,
    child: !ResponsiveWidget.isSmallScreen(context)?
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
       Flexible(child: GrocoInfo()),
        Flexible(child: ContactInfo()),
        Flexible(child: QuickLinks()),
        Flexible(child: Newsletter())
    ],):Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        GrocoInfo(),
        ContactInfo(),
        QuickLinks(),
        Newsletter()

      ],
    )
  );
  }
}
