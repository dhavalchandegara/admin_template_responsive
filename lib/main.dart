import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/core/app/app_providers.dart';
import 'package:admin_template_responsive/src/core/app/di.dart';
import 'package:admin_template_responsive/src/core/app/my_app.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  await initAppModule();

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}
