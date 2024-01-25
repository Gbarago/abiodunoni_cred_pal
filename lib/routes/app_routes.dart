import 'package:flutter/material.dart';
import 'package:abiodun_oni_take_home/presentation/shopping_v_six_screen/shopping_v_six_screen.dart';

class AppRoutes {
  static const String shoppingVSixScreen = '/shopping_v_six_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        shoppingVSixScreen: ShoppingVSixScreen.builder,
        initialRoute: ShoppingVSixScreen.builder
      };
}
