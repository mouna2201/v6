import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import 'irrigation_plan_screen.dart';
import '../../theme/app_theme.dart';
import '../../l10n/app_localizations.dart';

class FarmerFormScreen extends StatefulWidget {
  const FarmerFormScreen({super.key});

  @override
  State<FarmerFormScreen> createState() => _FarmerFormScreenState();
}

class _FarmerFormScreenState extends State<FarmerFormScreen> {
  String soil = "sableux"; // utiliser la clé en minuscules pour la traduction
  final TextEditingController location = TextEditingController();
  final TextEditingController crop = TextEditingController();
  final TextEditingController hectares = TextEditingController();
  late AppLocalizations _l10n;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.farmerTheme,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _l10n.parcelDetails,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.palette, color: AppTheme.farmerTheme.primaryColor),
              onPressed: () {
                // TODO: Implémenter le changement de thème
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Changement de thème bientôt disponible")),
                );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8), // Encore plus réduit
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildLabel(_l10n.locationField),
            const SizedBox(height: 2), // Encore plus réduit
            _buildTextField(
              controller: location,
              label: _l10n.locationHint,
            ),
            const SizedBox(height: 8), // Encore plus réduit

            _buildLabel(_l10n.soilType),
            const SizedBox(height: 2), // Encore plus réduit
            DropdownButtonFormField(
              initialValue: soil,
              dropdownColor: Colors.white,
              style: const TextStyle(color: Color(0xFF1B5E20), fontSize: 16, fontWeight: FontWeight.w500),
              items: [
                "sableux",
                "argileux", 
                "calcaire",
                "limoneux"
              ]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e,
                            style: const TextStyle(
                                color: Color(0xFF1B5E20), fontSize: 16, fontWeight: FontWeight.w500)),
                      ))
                  .toList(),
              onChanged: (v) => setState(() => soil = v!),
              decoration: _inputDecoration(),
            ),
            const SizedBox(height: 8), // Encore plus réduit

            _buildLabel(_l10n.cropTypes),
            const SizedBox(height: 2), // Encore plus réduit
            _buildTextField(
              controller: crop,
              label: _l10n.cropHint,
            ),
            const SizedBox(height: 8), // Encore plus réduit

            _buildLabel(_l10n.surfaceAreaHectares),
            const SizedBox(height: 2), // Encore plus réduit
            _buildTextField(
              controller: hectares,
              label: _l10n.surfaceHint,
              type: TextInputType.number,
            ),
            const SizedBox(height: 12), // Encore plus réduit

            CustomButton(
              text: _l10n.generateAIPlan,
              onTap: () {
                if (location.text.isEmpty || crop.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(_l10n.fillAllFields),
                    ),
                  );
                  return;
                }

                final cropList = crop.text
                    .split(',')
                    .map((c) => c.trim())
                    .where((c) => c.isNotEmpty)
                    .toList();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => IrrigationPlanScreen(
                      location: location.text,
                      soilType: soil,
                      cropTypes: cropList,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      ),
    );
  }

  // 🌸 Label stylé
  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF1B5E20), // Vert très foncé
        fontWeight: FontWeight.w600,
        fontSize: 12, // Encore plus réduit
        letterSpacing: 0.3,
      ),
    );
  }

  // 🧩 Champ de texte avec style unifié
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    TextInputType? type,
  }) {
    return TextField(
      controller: controller,
      keyboardType: type,
      style: const TextStyle(color: Color(0xFF1B5E20), fontSize: 12, fontWeight: FontWeight.w500), // Encore plus réduit
      decoration: _inputDecoration(hint: label),
    );
  }

  // 🎨 Style global des champs
  InputDecoration _inputDecoration({String? hint}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFF66BB6A), fontSize: 12), // Réduit
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8), // Encore plus réduit
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Encore plus réduit
        borderSide: const BorderSide(color: Colors.grey, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6), // Encore plus réduit
        borderSide: const BorderSide(color: Color(0xFF2E7D32), width: 1),
      ),
    );
  }
}
