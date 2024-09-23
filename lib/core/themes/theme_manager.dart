import 'package:flutter/material.dart';

import '../constants/values_manager.dart';
import 'color_manager.dart';

class FontConstants {
  static const String glory = "Glory";
}

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: ColorManager.primary,
    scaffoldBackgroundColor: ColorManager.background,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      elevation: 0,
      iconTheme: IconThemeData(
        color: ColorManager.white,
      ),
      backgroundColor: ColorManager.primary,
      titleTextStyle: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.w500,
          color: ColorManager.white,
          fontSize: AppSizeSp.s14),
      centerTitle: true,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: ColorManager.white,
      shape: const CircularNotchedRectangle(),
      elevation: 5,
      height: AppSizeH.s83,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizeR.s8)),
          ),
          iconColor: WidgetStateProperty.all(ColorManager.white),
          iconSize: WidgetStateProperty.all(AppSizeSp.s20),
          alignment: Alignment.center,
          elevation: WidgetStateProperty.all(AppSizeH.s16),
          foregroundColor: WidgetStateProperty.all<Color>(ColorManager.white),
          backgroundColor: WidgetStateProperty.all<Color>(ColorManager.primary),
          padding:
              WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 0)),
          shadowColor:
              WidgetStateProperty.all(ColorManager.black.withOpacity(0.1)),
          textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppSizeSp.s12,
              fontFamily: FontConstants.glory))),
    ),
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsetsDirectional.only(start: AppSizeW.s8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.grey1,
            strokeAlign: AppSizeW.s1_5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s4),
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSizeW.s1_5)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.red,
            strokeAlign: AppSizeW.s1_5,
          ),
        ),
        labelStyle: TextStyle(
          fontFamily: FontConstants.glory,
          fontSize: AppSizeSp.s12,
          color: ColorManager.primary,
          fontWeight: FontWeight.w500,
        ),
        helperStyle: TextStyle(
          fontFamily: FontConstants.glory,
          fontSize: AppSizeSp.s12,
          color: ColorManager.grey2,
          fontWeight: FontWeight.w500,
        ),
        errorStyle: TextStyle(
            fontFamily: FontConstants.glory,
            height: 1.2,
            fontSize: AppSizeSp.s12,
            fontWeight: FontWeight.w400,
            color: ColorManager.red),
        hintStyle: TextStyle(
          fontFamily: FontConstants.glory,
          fontSize: AppSizeSp.s14,
          color: ColorManager.primary,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.opaque,
            strokeAlign: AppSizeW.s1_5,
          ),
        ),
        filled: true,
        fillColor: ColorManager.white),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.w500,
          color: ColorManager.darkGrey,
          fontSize: AppSizeSp.s16),
      headlineSmall: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.w500,
          color: ColorManager.darkGrey,
          fontSize: AppSizeSp.s14),
      displaySmall: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.w500,
          color: ColorManager.darkGrey,
          fontSize: AppSizeSp.s14),
      labelSmall: TextStyle(
        color: ColorManager.grey1,
        fontSize: AppSizeSp.s14,
        fontFamily: FontConstants.glory,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        color: ColorManager.darkGrey,
        fontSize: AppSizeSp.s14,
        fontFamily: FontConstants.glory,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: ColorManager.tagTextColor,
        fontSize: AppSizeSp.s14,
        fontFamily: FontConstants.glory,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
          fontFamily: FontConstants.glory,
          color: ColorManager.white,
          fontWeight: FontWeight.w600,
          fontSize: AppSizeSp.s20),
      displayMedium: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.w600,
          color: ColorManager.white,
          fontSize: AppSizeSp.s16),
      //----------
      labelLarge: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.bold,
          color: ColorManager.primary,
          fontSize: AppSizeSp.s36),
      labelMedium: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.bold,
          color: ColorManager.primary,
          fontSize: AppSizeSp.s24),
      bodyLarge: TextStyle(
          fontFamily: FontConstants.glory,
          fontWeight: FontWeight.bold,
          color: ColorManager.white,
          fontSize: AppSizeSp.s24),

      bodyMedium: TextStyle(
          fontFamily: FontConstants.glory,
          color: ColorManager.primary,
          fontSize: AppSizeSp.s17),

      titleLarge: TextStyle(
          fontFamily: FontConstants.glory,
          color: ColorManager.primary,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s14),
      displayLarge: TextStyle(
          fontFamily: FontConstants.glory,
          color: ColorManager.labelTertiary,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s14),
    ),

    // fontFamily: FontConstants.fontFamilyPTSans,
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}

enum ThemeDataType { light, dark }

extension ThemeDataValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataType.dark.toString();
    } else {
      return ThemeDataType.light.toString();
    }
  }
}

extension ThemeDataTypeExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}
