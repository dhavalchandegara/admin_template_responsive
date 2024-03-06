import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/core/app/app_preference.dart';
import 'package:admin_template_responsive/src/core/app/di.dart';
import 'package:admin_template_responsive/src/presentation/utils/resources/route_manager.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text('Sign In'),
          ),
          FilledButton(
            onPressed: () {
              getIt<AppPreference>().saveBool(AppPreference.kIsLoggedIn, true);
              context.go(AppRoutes.home);
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
