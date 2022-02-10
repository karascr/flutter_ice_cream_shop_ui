import 'package:flutter/material.dart';
import 'package:ice_cream_shop/core/constants.dart';
import 'package:ice_cream_shop/screens/item_detail_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ice Cream Shop',
      theme: ThemeData(
        primarySwatch: Constants.themeSwatch,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ItemDetail.routeName: (ctx) => ItemDetail(),
      },
    );
  }
}
