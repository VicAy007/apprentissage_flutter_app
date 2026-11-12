import 'package:flutter/material.dart';

class ExpandableIconText extends StatefulWidget {
  const ExpandableIconText({super.key});

  @override
  State<ExpandableIconText> createState() => _ExpandableIconTextState();
}

class _ExpandableIconTextState extends State<ExpandableIconText> {
  // Variable pour suivre si le texte doit être affiché ou non
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Texte au clic')),
      body: Center(
        child: InkWell(
          onTap: () {
            // On change l'état au clic pour afficher ou masquer le texte
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.settings, size: 28, color: Colors.orange),
                
                // Le texte s'affiche uniquement si _isExpanded est vrai
                if (_isExpanded) ...[
                  const SizedBox(width: 8), // Espace entre l'icône et le texte
                  const Text(
                    'Paramètres',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}