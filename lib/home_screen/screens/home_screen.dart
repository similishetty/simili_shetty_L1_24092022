import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/custom_body.dart';
import 'package:simili_shetty_l1_24092022/home_screen/widgets/custom_header.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: AppColors.headerActionBg,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CustomHeaders(),
            CustomBody(),
          ],
        ),
      ),
    );
  }
}
