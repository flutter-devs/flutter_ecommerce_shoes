import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_ecommerce_app/Screen/bag_cart.dart';
import 'package:shoes_ecommerce_app/Screen/ecommerce_mainui.dart';
import 'package:shoes_ecommerce_app/Screen/shoes_detail.dart';
import 'package:shoes_ecommerce_app/Screen/splashscreen.dart';

import 'Constants/constants.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: Colors.blue[800],
    ));

    return MaterialApp(
      title: 'AEO UI',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          primarySwatch: Colors.blue
      ),
      routes: <String, WidgetBuilder> {
        Constants.SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        Constants.ECOMMERCE_MAINUI: (BuildContext context) => EcommerceMainUi(),
        Constants.SHOES_DETAIL: (BuildContext context) => ShoesDetail(),
        Constants.BAG_CART: (BuildContext context) => BagCart(),
      },
      initialRoute: Constants.SPLASH_SCREEN,
    );
  }
}

