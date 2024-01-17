import 'package:flutter/material.dart';
import 'package:tontinefront/pages/creationprojet.dart';
import 'package:tontinefront/pages/details_profile.dart';
import 'package:tontinefront/pages/widgets/header.dart';
import 'package:tontinefront/list_page.dart';
import 'package:tontinefront/pages/list_versement.dart';

class ApresTirage extends StatelessWidget {
  const ApresTirage({Key? key}) : super(key: key);

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
              padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'TIRAGES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Nouveau conteneur parent
            Container(
              width: double.infinity,
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
              child: Column(
                children: [
                  // Utiliser le Spacer ici pour ajouter de l'espace horizontal
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du premier bouton
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size((largeurEcran - 52 - 20) / 2,
                              0), // Ajuster la largeur du bouton
                          padding: EdgeInsets.symmetric(vertical: 22.0),
                        ),
                        child: Text(
                          'RESTE TIRAGE',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du premier bouton
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size((largeurEcran - 52 - 20) / 2,
                              0), // Ajuster la largeur du bouton
                          padding: EdgeInsets.symmetric(vertical: 22.0),
                        ),
                        child: Text(
                          'REÇU ARGENT',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  // Ajouter le titre centré sous les deux boutons
                  Text(
                    'Prénom et nom',
                    style: TextStyle(
                      color: Color.fromARGB(255, 23, 12, 148),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Center(
                    child: Container(
                      height: 2.0, // Ajouter le trait de séparation
                      width: largeurEcran - 52, // Ajuster la largeur du trait
                      color: Color.fromARGB(255, 23, 12, 148),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailProfile()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size((largeurEcran - 52 - 20) / 2,
                          0), // Ajuster la largeur du bouton
                      padding: EdgeInsets.symmetric(vertical: 22.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icône de profil avec une marge à gauche
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.account_circle,
                            color: Color.fromARGB(255, 23, 12, 148),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(
                            width:
                                22.0), // Ajuster l'espace entre l'icône et le texte
                        // Texte du bouton
                        Text(
                          'FATOU BARRY',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Ajouter la logique du deuxième bouton
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size((largeurEcran - 52 - 20) / 2,
                          0), // Ajuster la largeur du bouton
                      padding: EdgeInsets.symmetric(vertical: 22.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icône de profil avec une marge à gauche
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.account_circle,
                            color: Color.fromARGB(255, 23, 12, 148),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(
                            width:
                                22.0), // Ajuster l'espace entre l'icône et le texte
                        // Texte du bouton
                        Text(
                          'ASTOU DIAGNE',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Ajouter la logique du deuxième bouton
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size((largeurEcran - 52 - 20) / 2,
                          0), // Ajuster la largeur du bouton
                      padding: EdgeInsets.symmetric(vertical: 22.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icône de profil avec une marge à gauche
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.account_circle,
                            color: Color.fromARGB(255, 23, 12, 148),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(
                            width:
                                22.0), // Ajuster l'espace entre l'icône et le texte
                        // Texte du bouton
                        Text(
                          'SATOU FALL',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Ajouter la logique du deuxième bouton
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size((largeurEcran - 52 - 20) / 2,
                          0), // Ajuster la largeur du bouton
                      padding: EdgeInsets.symmetric(vertical: 22.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icône de profil avec une marge à gauche
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.account_circle,
                            color: Color.fromARGB(255, 23, 12, 148),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(
                            width:
                                22.0), // Ajuster l'espace entre l'icône et le texte
                        // Texte du bouton
                        Text(
                          'SALIOU BARRY',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                          'Enregistrer',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
