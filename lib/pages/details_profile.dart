import 'package:flutter/material.dart';
import 'package:tontinefront/pages/creationprojet.dart';
import 'package:tontinefront/pages/widgets/header.dart';
import 'package:tontinefront/list_page.dart';
import 'package:tontinefront/pages/list_versement.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({Key? key}) : super(key: key);

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du premier bouton
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                            (largeurEcran - 52 - 20) / 2,
                            0,
                          ), // Ajuster la largeur du bouton
                          padding: EdgeInsets.symmetric(vertical: 22.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'RESTE TIRAGE',
                              style: TextStyle(
                                color: Color.fromARGB(255, 23, 12, 148),
                              ),
                            ),
                            SizedBox(
                                width:
                                    8.0), // Espace entre le texte et le bouton
                            ElevatedButton(
                              onPressed: () {
                                // Ajouter la logique pour récupérer des prix
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10.0),
                              ),
                              child: Text(
                                'Récupérer des prix',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 23, 12, 148),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
