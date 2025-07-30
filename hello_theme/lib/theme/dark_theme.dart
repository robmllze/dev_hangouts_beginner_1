import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _lora = GoogleFonts.lora(color: Colors.white);
final _poppins800 = GoogleFonts.poppins(color: Colors.white);
final _poppins700 = GoogleFonts.poppins(color: Colors.white);
final _roboto = GoogleFonts.poppins(color: Colors.grey[900]);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    surface: Colors.black,
  ),
  textTheme: TextTheme(
    displayLarge: _lora.copyWith(fontSize: 30.0, fontWeight: FontWeight.bold),
    displayMedium: _lora.copyWith(fontSize: 28.0, fontWeight: FontWeight.bold),
    displaySmall: _lora.copyWith(fontSize: 26.0, fontWeight: FontWeight.bold),
    headlineLarge: _poppins800.copyWith(fontSize: 24.0, fontWeight: FontWeight.w700),
    headlineMedium: _poppins800.copyWith(fontSize: 22.0, fontWeight: FontWeight.w700),
    headlineSmall: _poppins800.copyWith(fontSize: 20.0, fontWeight: FontWeight.w700),
    titleLarge: _poppins700.copyWith(fontSize: 19.0, fontWeight: FontWeight.w600),
    titleMedium: _poppins700.copyWith(fontSize: 17.0, fontWeight: FontWeight.w600),
    titleSmall: _poppins700.copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
    bodyLarge: _roboto.copyWith(fontSize: 15.0, fontWeight: FontWeight.w500),
    bodyMedium: _roboto.copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodySmall: _roboto.copyWith(fontSize: 13.0, fontWeight: FontWeight.w500),
    labelLarge: _roboto.copyWith(fontSize: 15.0, fontWeight: FontWeight.bold),
    labelMedium: _roboto.copyWith(fontSize: 14.0, fontWeight: FontWeight.bold),
    labelSmall: _roboto.copyWith(fontSize: 13.0, fontWeight: FontWeight.bold),
  ),
);
