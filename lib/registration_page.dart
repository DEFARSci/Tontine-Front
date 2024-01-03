import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Champ de prénom
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                  ),
                ),
                SizedBox(height: 16.0),

                // Champ de nom
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                  ),
                ),
                SizedBox(height: 16.0),

                // Champ de numéro de téléphone
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Numéro de téléphone',
                  ),
                ),
                SizedBox(height: 16.0),

                // Champ de mot de passe
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                  ),
                ),
                SizedBox(height: 16.0),

                // Champ de confirmation de mot de passe
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirmation de mot de passe',
                  ),
                ),
                SizedBox(height: 16.0),

                // Bouton d'inscription
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez ici le code d'inscription
                    print('Inscription réussie');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], // Couleur de fond du bouton
                  ),
                  child: Text(
                    'S\'inscrire',
                     style: TextStyle(
                    color: Colors.white,)
                  ),
                ),
                 SizedBox(height: 16.0),

            // Lien pour rediriger vers la page d'inscription
            TextButton(
              onPressed: () {
                // Ajoutez ici le code pour rediriger vers la page d'inscription
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text("Vous avez déjà un compte ? Connectez-vous"),
            ),
                SizedBox(height: 8.0),

                // Bouton de retour à la page d'accueil
                ElevatedButton(
                  onPressed: () {
                // Utilisez Navigator.pushReplacement pour aller directement à la page d'accueil
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], // Couleur de fond du bouton
                  ),
                  child: Text(
                    'Retour à l\'accueil',
                     style: TextStyle(
                    color: Colors.white,)
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
