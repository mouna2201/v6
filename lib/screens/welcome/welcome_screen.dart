import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/custom_button.dart';
import '../enterprise/enterprise_role_screen.dart';
import '../farmer/farmer_form_screen.dart';
import '../../presentation/providers/language_provider.dart';
import '../../l10n/app_localizations.dart';
import 'dart:math';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 15).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // 🌊 Fond animé
  Widget _animatedBackground() {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: MediaQuery.of(context).size,
          painter: WavePainter(_animation.value),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(languageProvider);
    final currentLang = locale.languageCode;

    // Textes dynamiques selon la langue
    String welcomeText = {
      'fr': "Bienvenue sur AgroPiquet 🌿",
      'en': "Welcome to AgroPiquet 🌿",
      'ar': "مرحبًا بك في أغروبيكيت 🌿"
    }[currentLang]!;

    String roleText = {
      'fr': "Choisissez votre rôle pour continuer",
      'en': "Choose your role to continue",
      'ar': "اختر دورك للمتابعة"
    }[currentLang]!;

    String farmerText = {
      'fr': "Je suis un petit fermier 👨‍🌾",
      'en': "I am a small farmer 👨‍🌾",
      'ar': "أنا فلاح صغير 👨‍🌾"
    }[currentLang]!;

    String enterpriseText = {
      'fr': "Je suis une entreprise agricole 🏢🌱",
      'en': "I am an agricultural company 🏢🌱",
      'ar': "أنا شركة زراعية 🏢🌱"
    }[currentLang]!;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8), // Blanc cassé
      body: Stack(
        children: [
          _animatedBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, -_animation.value),
                        child: const Icon(Icons.eco,
                            size: 120, color: Colors.green),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    welcomeText,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    roleText,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // 🌐 Bouton langue
                  Align(
                    alignment: Alignment.centerRight,
                    child: PopupMenuButton<String>(
                      icon: const Icon(Icons.language, color: Colors.green),
                      onSelected: (value) {
                        changeLanguage(ref, value);
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 'fr',
                          child: Text("🇫🇷 Français"),
                        ),
                        const PopupMenuItem(
                          value: 'en',
                          child: Text("🇺🇸 English"),
                        ),
                        const PopupMenuItem(
                          value: 'ar',
                          child: Text("🇸🇦 العربية"),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  CustomButton(
                    text: farmerText,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const FarmerFormScreen()),
                    ),
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    text: enterpriseText,
                    outlined: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const EnterpriseRoleScreen()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 🌊 WavePainter
class WavePainter extends CustomPainter {
  final double offset;
  WavePainter(this.offset);

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()..color = Colors.lightGreenAccent.withOpacity(0.4);
    final paint2 = Paint()..color = Colors.greenAccent.withOpacity(0.2);

    final path1 = Path();
    final path2 = Path();

    // Vague 1
    path1.moveTo(0, size.height * 0.5);
    for (double i = 0; i <= size.width; i++) {
      path1.lineTo(
          i, size.height * 0.5 + sin((i / size.width * 2 * 3.1415) + offset) * 20);
    }
    path1.lineTo(size.width, size.height);
    path1.lineTo(0, size.height);
    path1.close();

    // Vague 2
    path2.moveTo(0, size.height * 0.55);
    for (double i = 0; i <= size.width; i++) {
      path2.lineTo(
          i, size.height * 0.55 + cos((i / size.width * 2 * 3.1415) + offset) * 25);
    }
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.close();

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant WavePainter oldDelegate) => true;
}
