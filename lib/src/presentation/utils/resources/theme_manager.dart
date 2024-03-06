import 'package:flutter/material.dart';
import 'package:admin_template_responsive/src/presentation/utils/resources/color_schemes.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: Typography.material2021(
    colorScheme: lightColorScheme,
  ).black,
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  textTheme: Typography.material2021(
    colorScheme: darkColorScheme,
  ).white,
);
