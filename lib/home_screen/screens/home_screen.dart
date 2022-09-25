
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/animation/custom_slide_transition.dart';
import 'package:simili_shetty_l1_24092022/home_screen/repository/app_bar_action_listner.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/cart_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/custom_body.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/custom_header.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/login_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/menu_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/responsive_widget.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/search_widget.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.headerActionBg,
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: const [
              Flexible(child: CustomHeaders()),
              Expanded(flex: 7, child: CustomBody()),
            ],
          ),
          Positioned(
            top: 110,
            child: ValueListenableBuilder(
                valueListenable: AppBarActionNotifier.isSearchSelected,
                builder: (context, bool value, widget) {
                  return value
                      ? CustomSlideTransition(
                          isButtonSelected: value,
                          child: SizedBox(
                              width:
                                  ResponsiveWidget.getAppBarActionSize(context),
                              child: const SearchWidget()))
                      : Container();
                }),
          ),
          Positioned(
            top:  110,
            child: ValueListenableBuilder(
                valueListenable: AppBarActionNotifier.isCartSelected,
                builder: (context, bool value, widget) {
                  return value
                      ? CustomSlideTransition(
                          isButtonSelected: value, child: const CartWidget())
                      : Container();
                }),
          ),
          Positioned(
            top: 110,
            child: ValueListenableBuilder(
                valueListenable: AppBarActionNotifier.isLoginSelected,
                builder: (context, bool value, widget) {
                  return value
                      ? CustomSlideTransition(
                          isButtonSelected: value, child: const LoginWidget())
                      : Container();
                }),
          ),
          Positioned(
            top: 110,
            child: ValueListenableBuilder(
                valueListenable: AppBarActionNotifier.isMenuSelected,
                builder: (context, bool value, widget) {
                  return value
                      ? CustomSlideTransition(
                          isButtonSelected: value, child: const MenuWidget())
                      : Container();
                }),
          ),
        ],
      ),
    );
  }
}
