import 'package:flutter/material.dart';
import 'package:Tontine-Front/login_page.dart';


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
      backgroundColor: Colors.blue[900], // Fond de couleur bleu foncé
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texte de bienvenue
            Text(
              'Bienvenue dans Gëustu',
              style: TextStyle(
                color: Colors.white, // Couleur du texte en blanc
                fontSize: 24.0, // Taille du texte
                fontWeight: FontWeight.bold, // Gras
              ),
            ),
            SizedBox(height: 16.0),

            // Logo au centre
            Image.asset(
              'images/bodian.png', // Remplacez par le chemin de votre image
              width: 200.0,
              height: 200.0,
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
                primary: Colors.white, // Couleur de fond du bouton en blanc
              ),
              child: Text(
                'Commencez',
                style: TextStyle(
                  color: Colors.blue[900], // Couleur du texte en bleu foncé
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
