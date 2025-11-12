import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

/// Provider pour gérer la langue de l'application
final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier();
});

/// Notifier pour gérer les changements de langue
class LanguageNotifier extends StateNotifier<Locale> {
  LanguageNotifier() : super(const Locale('fr', '')); // Français par défaut

  /// Helper pour changer la langue
  void changeLanguage(String langCode) {
    state = Locale(langCode, '');
  }

  /// Changer de langue automatiquement (fr -> en -> ar -> fr)
  void changeLanguageAuto() {
    if (state.languageCode == 'fr') {
      state = const Locale('en', '');
    } else if (state.languageCode == 'en') {
      state = const Locale('ar', '');
    } else {
      state = const Locale('fr', '');
    }
  }

  /// Obtenir la langue actuelle
  String get currentLang => state.languageCode ?? 'fr';
}

/// Helper global pour changer la langue
void changeLanguage(WidgetRef ref, String langCode) {
  ref.read(languageProvider.notifier).changeLanguage(langCode);
}
