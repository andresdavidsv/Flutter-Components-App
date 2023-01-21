import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components on Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].name),
                  leading: Icon(
                    menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  onTap: () => {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => ListView1Screen());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOptions[index].route)
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
