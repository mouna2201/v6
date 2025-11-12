// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'theme/app_theme.dart';
import 'presentation/providers/language_provider.dart';
import 'services/app_initializer.dart';
import 'screens/welcome/welcome_screen.dart';
import 'l10n/app_localizations.dart';

/// Point d'entrée de l'application
void main() {
  runApp(
    const ProviderScope(
      child: AgroApp(),
    ),
  );
}

class AgroApp extends ConsumerWidget {
  const AgroApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);

    // Démarre MQTT au lancement
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setupMQTT(ref);
    });

    return MaterialApp(
      title: "AgroPiquet",
      debugShowCheckedModeBanner: false,
      locale: locale,
      supportedLocales: const [
        Locale('fr', ''), // Français
        Locale('en', ''), // Anglais
        Locale('ar', ''), // Arabe
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const AppInitializer(), // Écran de démarrage
    );
  }
}

/// Écran de démarrage (Splash) → redirige après init
class AppInitializer extends ConsumerStatefulWidget {
  const AppInitializer({super.key});

  @override
  ConsumerState<AppInitializer> createState() => _AppInitializerState();
}

class _AppInitializerState extends ConsumerState<AppInitializer> {
  @override
  void initState() {
    super.initState();
    _checkAuthAndNavigate();
  }

  Future<void> _checkAuthAndNavigate() async {
    // Simule un délai (ou vérifie auth Firebase, etc.)
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    // TODO: Vérifier si l'utilisateur est connecté
    // final user = await AuthService.getCurrentUser();
    // if (user != null) → FarmerDashboardScreen()

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B5E20),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.eco,
              size: 80,
              color: Colors.white,
            ),
            const SizedBox(height: 24),
            const Text(
              "AgroPiquet",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}