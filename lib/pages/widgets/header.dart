import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo avec texte centré
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Keule bi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          // Bouton Paramètre centré avec contour arrondi
          Container(
            margin: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(
                Icons.settings,
                size: 30.0, // Taille de l'icône
              ),
              color: Color.fromARGB(255, 23, 12, 148), // Couleur de l'icône
              onPressed: () {
                // Ajouter la logique du bouton Paramètre
              },
            ),
          ),
        ],
      ),
    );
  }
}
