import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class SimpleThemeChangeButton extends StatefulWidget {
  final Function(ThemeData) onThemeChanged;

  const SimpleThemeChangeButton({
    super.key,
    required this.onThemeChanged,
  });

  @override
  State<SimpleThemeChangeButton> createState() => _SimpleThemeChangeButtonState();
}

class _SimpleThemeChangeButtonState extends State<SimpleThemeChangeButton> {
  int _currentThemeIndex = 0;
  
  final List<ThemeData> _themes = [
    AppTheme.farmerTheme,
    AppTheme.enterpriseTheme,
    AppTheme.irrigationTheme,
    AppTheme.darkTheme,
    AppTheme.lightTheme,
  ];

  final List<String> _themeNames = [
    'Agriculteur',
    'Entreprise',
    'Irrigation',
    'Sombre',
    'Clair',
  ];

  final List<IconData> _themeIcons = [
    Icons.eco,
    Icons.business,
    Icons.water_drop,
    Icons.dark_mode,
    Icons.light_mode,
  ];

  final List<Color> _themeColors = [
    AppTheme.farmerTheme.primaryColor,
    AppTheme.enterpriseTheme.primaryColor,
    AppTheme.irrigationTheme.primaryColor,
    AppTheme.darkTheme.primaryColor,
    AppTheme.lightTheme.primaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(
        _themeIcons[_currentThemeIndex],
        color: _themeColors[_currentThemeIndex],
        size: 24,
      ),
      tooltip: 'Changer le thème',
      onSelected: (int index) {
        setState(() {
          _currentThemeIndex = index;
        });
        widget.onThemeChanged(_themes[index]);
      },
      itemBuilder: (context) => _themes.asMap().entries.map((entry) {
        final index = entry.key;
        final theme = entry.value;
        return PopupMenuItem(
          value: index,
          child: Row(
            children: [
              Icon(
                _themeIcons[index],
                color: _themeColors[index],
              ),
              const SizedBox(width: 8),
              Text(_themeNames[index]),
              if (_currentThemeIndex == index) ...[
                const Spacer(),
                Icon(Icons.check, color: Colors.green),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  void cycleTheme() {
    setState(() {
      _currentThemeIndex = (_currentThemeIndex + 1) % _themes.length;
    });
    widget.onThemeChanged(_themes[_currentThemeIndex]);
  }
}
