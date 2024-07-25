import 'package:bmi_app/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    // ignore: deprecated_member_use
    background: lBgColor,
    primary: lPrimaryColor,
    // ignore: deprecated_member_use
    onBackground: lFontColor,
    primaryContainer: lDivColor,
    onPrimary: lFontColor,
    onSecondaryContainer: lLabelColor,
  ),
);

var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    // ignore: deprecated_member_use
    background: dBgColor,
    primary: dPrimaryColor,
    // ignore: deprecated_member_use
    onBackground: dFontColor,
    primaryContainer: dDivColor,
    onPrimary: dFontColor,
    onSecondaryContainer: dLabelColor,
  ),
);
