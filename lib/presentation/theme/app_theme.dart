import 'package:flutter/material.dart';
import 'package:reachout/presentation/theme/color.dart';
import 'package:reachout/presentation/theme/text_theme.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColorLight: colorPrimaryLight,
  canvasColor: colorBg,
  textTheme: textTheme,
  useMaterial3: true,
  colorScheme: const ColorScheme(
    primary: colorPrimary,
    secondary: colorSecondary,
    background: colorBg,
    surface: colorBg,
    onBackground: Colors.white,
    error: colorError,
    onError: colorSecondaryDark,
    onPrimary: colorOnPrimary,
    onSecondary: colorOnSecondary,
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    color: colorPrimary,
  ),
  navigationBarTheme: NavigationBarThemeData(
    labelTextStyle: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return textTheme.bodySmall?.copyWith(
            color: colorPrimary,
            fontWeight: FontWeight.bold,
          );
        }
        return textTheme.bodySmall?.copyWith(
          color: colorTextLight,
          fontWeight: FontWeight.normal,
        );
      },
    ),
  ),
);

ThemeData darkTheme = lightTheme;
