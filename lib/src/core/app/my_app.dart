import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/presentation/utils/resources/route_manager.dart';
import 'package:admin_template_responsive/src/presentation/utils/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Admin Template Responsive',
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,
    );
  }
}
