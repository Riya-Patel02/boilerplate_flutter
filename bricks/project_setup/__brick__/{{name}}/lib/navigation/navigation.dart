import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationConfig {
  final List<Map<String, dynamic>> stackNavigation;
  NavigationConfig(this.stackNavigation);
  GoRouter get router => GoRouter(routes: _buildRoutes(stackNavigation));

  List<GoRoute> _buildRoutes(List<Map<String, dynamic>> routesConfig) {
    return routesConfig.map((route) {
      final name = route["name"];
      final path = route["options"]["path"];
      final component = route['component'];

      return GoRoute(
        name: name,
        path: path,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            MaterialPage<dynamic>(child: component(context, state)),
      );
    }).toList();
  }
}
