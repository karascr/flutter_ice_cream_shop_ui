import 'package:flutter/material.dart';
import 'package:ice_cream_shop/widgets/home_header_widget.dart';
import 'package:ice_cream_shop/widgets/home_search_bar_widget.dart';
import 'package:ice_cream_shop/widgets/home_top_flavours_widget.dart';
import 'package:ice_cream_shop/widgets/home_top_item_widget.dart';
import 'package:ice_cream_shop/widgets/popular_ice_creams_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            HomeHeader(),
            HomeSearchBar(),
            HomeTopFlavours(),
            HomePopularIceCreams(),
            HomeTopItem(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
