import 'package:flutter/material.dart';
import 'package:tontinefront/pages/widgets/header.dart';

class CreatProjet extends StatelessWidget {
  const CreatProjet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: HeaderSection(),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      size: 30.0,
                    ),
                    color: Color.fromARGB(255, 23, 12, 148),
                    onPressed: () {
                      // Ajouter la logique du bouton Message
                    },
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 30.0,
                    ),
                    color: Color.fromARGB(255, 23, 12, 148),
                    onPressed: () {
                      // Ajouter la logique du bouton Menu
                    },
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    color: Color.fromARGB(255, 23, 12, 148),
                    onPressed: () {
                      // Ajouter la logique du bouton Recherche
                    },
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 30.0,
                    ),
                    color: Color.fromARGB(255, 23, 12, 148),
                    onPressed: () {
                      // Ajouter la logique du bouton Profil
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            // Nouveau conteneur avec titre centré et fond arrondi
            Container(
              width: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Formulaire Tontine',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Formulaire avec un champ et un bouton
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 23, 12, 148),
                  width: 2.0,
                ),
              ),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'NOM DU PROJET',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Utilisation de Container pour que le bouton ait la même largeur que l'Input
                    Container(
                      width: largeurEcran -
                          2 * 10, // Largeur de l'écran moins les marges
                      child: ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du bouton du formulaire
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 230, 231, 232),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: BorderSide(
                            color: Color.fromARGB(255, 23, 12, 148),
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'AJOUTER LES MEMBRES DU TONTINE',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    // 2ème input
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'MODALITÉ DU TONTINE',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Utilisation de Container pour que le bouton ait la même largeur que l'Input
                    Container(
                      width: largeurEcran -
                          2 * 10, // Largeur de l'écran moins les marges
                      child: ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du bouton du formulaire
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 230, 231, 232),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: BorderSide(
                            color: Color.fromARGB(255, 23, 12, 148),
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'MODE DE TIRAGES ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    // 3ème bouton
                    SizedBox(height: 16.0),
                    Container(
                      width: largeurEcran -
                          2 * 10, // Largeur de l'écran moins les marges
                      child: ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du bouton du formulaire
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 230, 231, 232),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: BorderSide(
                            color: Color.fromARGB(255, 23, 12, 148),
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'MODE D’AMANDE',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    // Bouton Valider
                    SizedBox(height: 16.0),
                    Container(
                      width: largeurEcran -
                          2 * 10, // Largeur de l'écran moins les marges
                      child: ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du bouton Valider
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 23, 12, 148),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Valider',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
