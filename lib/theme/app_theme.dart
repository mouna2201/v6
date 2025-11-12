import 'package:flutter/material.dart';

class AppTheme {
  // Thème pour les fermiers (vert très contrasté)
  static ThemeData farmerTheme = ThemeData(
    primaryColor: const Color(0xFF2E7D32), // Vert foncé pour maximum contraste
    scaffoldBackgroundColor: const Color(0xFFF9FBE7), // Fond vert très très clair
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF2E7D32), // Vert foncé
      secondary: const Color(0xFF66BB6A), // Vert moyen
      surface: Colors.white,
      surfaceContainer: const Color(0xFFF9FBE7),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF2E7D32), // Vert foncé
      foregroundColor: Colors.white,
      elevation: 3,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2E7D32), // Vert foncé
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)), // Plus petit
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Plus petit
        elevation: 2,
      ),
    ),
    cardTheme: const CardThemeData(
      color: Colors.white,
      elevation: 6,
      shadowColor: Color(0xFF2E7D32),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)), // Plus petit
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF1B5E20)), // Plus petit
      bodyMedium: TextStyle(fontSize: 12, color: Color(0xFF1B5E20)), // Plus petit
      bodySmall: TextStyle(fontSize: 10, color: Color(0xFF2E7D32)), // Plus petit
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Plus petit
        borderSide: const BorderSide(color: Color(0xFF2E7D32), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Plus petit
        borderSide: const BorderSide(color: Colors.grey, width: 1), // Gris discret
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Plus petit
        borderSide: const BorderSide(color: Color(0xFF2E7D32), width: 1), // Vert seulement au focus
      ),
      labelStyle: const TextStyle(color: Color(0xFF1B5E20), fontWeight: FontWeight.w600, fontSize: 12),
      hintStyle: const TextStyle(color: Color(0xFF66BB6A), fontSize: 10),
    ),
  );

  // Thème pour les entreprises (vert d'eau professionnel)
  static ThemeData enterpriseTheme = ThemeData(
    primaryColor: const Color(0xFF00897B), // Vert d'eau professionnel
    scaffoldBackgroundColor: const Color(0xFFE0F2F1), // Vert d'eau très clair
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF00897B), // Vert d'eau
      secondary: const Color(0xFF4DB6AC), // Vert d'eau moyen
      surface: Colors.white,
      surfaceContainer: const Color(0xFFE0F2F1),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF00897B), // Vert d'eau
      foregroundColor: Colors.white,
      elevation: 2,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00897B), // Vert d'eau
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)), // Plus petit
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Plus petit
        elevation: 2,
      ),
    ),
    cardTheme: const CardThemeData(
      color: Colors.white,
      elevation: 3,
      shadowColor: Color(0xFF00897B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))), // Plus petit
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF00695C)), // Plus petit et plus foncé
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF00897B)), // Plus petit
      bodyMedium: TextStyle(fontSize: 12, color: Color(0xFF00897B)), // Plus petit
      bodySmall: TextStyle(fontSize: 10, color: Color(0xFF4DB6AC)), // Plus petit
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Plus petit
        borderSide: const BorderSide(color: Color(0xFF00897B), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Plus petit
        borderSide: const BorderSide(color: Colors.grey, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Plus petit
        borderSide: const BorderSide(color: Color(0xFF00897B), width: 1),
      ),
      labelStyle: const TextStyle(color: Color(0xFF00897B), fontWeight: FontWeight.w600, fontSize: 12),
      hintStyle: const TextStyle(color: Color(0xFF4DB6AC), fontSize: 10),
    ),
  );

  // Thème par défaut (conservé pour compatibilité)
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.green.shade700,
    scaffoldBackgroundColor: const Color(0xFFE8F5E9),
    colorScheme: ColorScheme.light(
      primary: Colors.green.shade700,
      secondary: Colors.green.shade300,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  // Thème noir pour l'écran d'irrigation
  static ThemeData irrigationTheme = ThemeData(
    primaryColor: const Color(0xFF000000), // Noir
    scaffoldBackgroundColor: const Color(0xFF000000), // Fond noir
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFF000000), // Noir
      secondary: const Color(0xFF333333), // Gris foncé
      surface: const Color(0xFF1A1A1A), // Gris très foncé
      surfaceContainer: const Color(0xFF000000), // Noir
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF000000), // Noir
      foregroundColor: Colors.white,
      elevation: 3,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF333333), // Gris foncé
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 2,
      ),
    ),
    cardTheme: const CardThemeData(
      color: Color(0xFF1A1A1A), // Gris très foncé
      elevation: 6,
      shadowColor: Color(0xFF333333),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 12, color: Colors.white70),
      bodySmall: TextStyle(fontSize: 10, color: Colors.white54),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1A1A1A), // Gris très foncé
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFF333333), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFF333333), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFF666666), width: 1),
      ),
      labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12),
      hintStyle: const TextStyle(color: Colors.white54, fontSize: 10),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.green.shade800,
    scaffoldBackgroundColor: const Color(0xFF1B1B1B),
    colorScheme: ColorScheme.dark(
      primary: Colors.green.shade600,
      secondary: Colors.green.shade400,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white70),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade800,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
