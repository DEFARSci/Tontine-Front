import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 207, 206, 233), // Fond de couleur bleu foncé
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texte de bienvenue
            /* Text(
              'KAAY GNOU NATT',
              style: TextStyle(
                color: Color.fromARGB(
                    255, 23, 12, 148), // Couleur du texte en blanc
                fontSize: 28.0, // Taille du texte
                fontWeight: FontWeight.bold, // Gras
              ),
            ),*/
            SizedBox(height: 16.0),

            // Logo au centre
            Image.asset(
              'images/leket.png', // Remplacez par le chemin de votre image
              width: 400.0,
              height: 400.0,
            ),
            SizedBox(height: 16.0),

            // Bouton "Commencez" en bas
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                // Ajoutez ici le code pour gérer l'action du bouton "Commencez"
                print('Commencez');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 23, 12, 148), // Couleur de fond du bouton en blanc
              ),
              child: Text(
                'KAAY GNOU NATT',
                style: TextStyle(
                  fontFamily: 'Engravers MT',
                  fontSize: 28.0, // Taille du texte
                  fontWeight: FontWeight.bold, // Gras
                  color: const Color.fromARGB(
                      255, 255, 255, 255), // Couleur du texte en bleu foncé
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
