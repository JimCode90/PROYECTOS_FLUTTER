

import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // TODO: borrar home
    MenuOptions(route: 'home', icon: Icons.home_filled, name: 'Home Screen', screen: const HomeScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list_alt, name: 'ListView1 Screen', screen: const ListView1Screen()),
    MenuOptions(route: 'listview2', icon: Icons.list, name: 'ListView2 Screen', screen: const ListView2Screen()),
    MenuOptions(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.credit_card, name: 'Card Screen', screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen()
    );
  }
}