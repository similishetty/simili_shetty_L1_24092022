import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/blogs_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/categories_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/contact_info.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/feature_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/groco_info.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/product_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/quick_links.dart';
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

class _CustomBodyState extends State<CustomBody> {
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
    ));
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
            Text(AppData.freshAndOrganicProductsForYou),
            Text(
              AppData.loremSubTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }

  Widget featureView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.ourText,AppData.featuresText), const FeatureWidget()],
    );
  }

  Widget productView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.ourText,AppData.productText), const ProductWidget()],
    );
  }

  Widget categoriesView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.ourText,AppData.categoriesText), const CategoriesWidget()],
    );
  }

  Widget reviewView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.customerText,AppData.reviewText), const ReviewWidget()],
    );
  }
  Widget blogsView() {
    return Column(
      children: [CustomWidget.menuTitle(AppData.customerText,AppData.reviewText), const BlogsWidget()],
    );
  }

  Widget bottomView() {
  return Container(
    color: AppColors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
       Flexible(child: GrocoInfo()),
        Flexible(child: ContactInfo()),
        Flexible(child: QuickLinks()),
        Flexible(child: Newsletter())
    ],),
  );
  }
}
