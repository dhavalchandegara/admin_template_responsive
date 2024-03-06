import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/presentation/utils/resources/route_manager.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Dashboard({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: getDrawer(context),
          ),
          Expanded(
            flex: 5,
            child: navigationShell,
          ),
        ],
      ),
    );
  }

  Widget getDrawer(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'Home',
          ),
          onTap: () {
            context.go(AppRoutes.home);
          },
        ),
        ListTile(
          title: const Text(
            'Profile',
          ),
          onTap: () {
            context.go(AppRoutes.profile);
          },
        ),
        ListTile(
          title: const Text(
            'Setting',
          ),
          onTap: () {
            context.go(AppRoutes.setting);
          },
        )
      ],
    );
  }
}
