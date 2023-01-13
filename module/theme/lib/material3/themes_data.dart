import 'package:flutter/material.dart';
import 'package:theme/material3/color/custom_color.dart';
import 'm3_theme_lib.dart';

class AppThemes {
  static ThemeData get haloLightTheme =>
      getTheme(M3HaloColors.lightColorScheme, false);

  static ThemeData get haloDarkTheme =>
      getTheme(M3HaloColors.darkColorScheme, true);

  static ThemeData getTheme(ColorScheme colorScheme, bool isDark) {
    return ThemeData(
      useMaterial3: true,
      // fontFamily: 'Roboto',
      ///colors
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      brightness: isDark ? Brightness.dark : Brightness.light,
      backgroundColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      cardColor: colorScheme.surface,
      dialogBackgroundColor: colorScheme.surface,
      dividerColor: colorScheme.outline,
      bottomAppBarColor: colorScheme.surface,
      indicatorColor: colorScheme.primary,
      dividerTheme: DividerThemeData(
        color: colorScheme.background,
        thickness: 1,
      ),
      extensions: [isDark ? darkCustomColors : lightCustomColors],

      ///text
      textTheme: haloTextTheme(colorScheme),

      ///buttons
      textButtonTheme: haloTextButtonTheme(colorScheme),
      outlinedButtonTheme: haloOutlinedButtonTheme(colorScheme),
      elevatedButtonTheme: haloElevatedButtonTheme(colorScheme),

      ///app bar
      appBarTheme: haloAppBarTheme(colorScheme, isDark),

      ///bottom bar
      bottomAppBarTheme: haloBottomAppBarTheme(colorScheme, isDark),
      bottomNavigationBarTheme: haloBottomNavigationBarTheme(colorScheme),

      /// chip
      chipTheme: haloChipTheme(colorScheme),

      ///others
      iconTheme: haloIconTheme(colorScheme),
      radioTheme: haloRadioTheme(colorScheme),
      checkboxTheme: haloCheckboxTheme(colorScheme),
      // switchTheme: haloSwitchTheme(colorScheme),
      ///tab bar
      tabBarTheme: haloTabBarTheme(colorScheme),

      ///FAB
      floatingActionButtonTheme: haloFABTheme(colorScheme),

      ///input, text field
      inputDecorationTheme: haloInputDecorationTheme(colorScheme),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.onSurfaceVariant,
      ),

      /// card
      cardTheme: haloCardTheme(colorScheme),
    );
  }

  static haloCardTheme(ColorScheme colorScheme) => CardTheme(
        color: colorScheme.surface,
        margin: const EdgeInsets.all(16),
        shape: HaloShape.cardShape,
        surfaceTintColor: colorScheme.surface,
        elevation: 1,
      );

  static haloSwitchTheme(ColorScheme colorScheme) => SwitchThemeData(
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.disableTextColor;
        }),
        thumbColor: MaterialStateProperty.all(colorScheme.surface),
      );

  static haloRadioTheme(ColorScheme colorScheme) => RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.outline;
        }),
        overlayColor: MaterialStateProperty.all(colorScheme.secondaryContainer),
      );
  static haloIconTheme(ColorScheme colorScheme) =>
      IconThemeData(color: colorScheme.onSurface);

  static haloFABTheme(ColorScheme colorScheme) => FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      );
}
