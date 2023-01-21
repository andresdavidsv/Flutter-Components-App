import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'list View1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'list View2',
        screen: const ListView2Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'alert',
        name: 'alert',
        screen: const AlertScreen(),
        icon: Icons.campaign),
    MenuOption(
        route: 'card',
        name: 'card',
        screen: const CardScreen(),
        icon: Icons.card_travel),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Inputs',
        screen: const InputsScreen(),
        icon: Icons.power_input_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_sharp),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfiniteScroll and Pull Refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
