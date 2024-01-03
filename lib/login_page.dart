import 'package:flutter/material.dart';
import 'registration_page.dart';
import 'pages/pageapresconnexion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                 // Lien pour la récupération du mot de passe
                TextButton(
                  onPressed: () {
                    // Ajoutez ici le code pour la récupération du mot de passe
                    print('Mot de passe oublié');
                  },
                  child: Text('Mot de passe oublié ?'),
                ),
                SizedBox(height: 16.0),

                // Bouton de connexion
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) => ApresCon()),
                     );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], // Couleur de fond du bouton
                  ),
                  child: Text(
                    'Se connecter',
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
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text("Vous n'avez pas de compte ? Inscrivez-vous"),
            ),
                 SizedBox(height: 8.0),

                // Bouton de retour à la page d'accueil
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
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
