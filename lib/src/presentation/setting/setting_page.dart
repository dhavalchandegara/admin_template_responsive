import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/core/app/app_preference.dart';
import 'package:admin_template_responsive/src/core/app/di.dart';
import 'package:admin_template_responsive/src/presentation/utils/resources/route_manager.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Center(
              child: Text('Setting'),
            ),
            FilledButton(
              onPressed: () {
                getIt<AppPreference>()
                    .saveBool(AppPreference.kIsLoggedIn, false);
                context.go(AppRoutes.signIn);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
