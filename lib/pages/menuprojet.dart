import 'package:flutter/material.dart';
import 'package:tontinefront/pages/creationprojet.dart';
import 'package:tontinefront/pages/widgets/header.dart';
import 'package:tontinefront/list_page.dart';
import 'package:tontinefront/pages/list_versement.dart';
import 'package:tontinefront/pages/list_amandes.dart';

class MenuProjet extends StatelessWidget {
  const MenuProjet({Key? key}) : super(key: key);

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
              width: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Leket bi',
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
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Bouton à droite
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) => ListPage()),
                     );
                      },
                      child: Text(
                        'liste des participants',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),

                    // Bouton à droite 2
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatProjet()),
                        );
                      },
                      child: Text(
                        'PARTICIPANT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),

                    // Bouton à droite 3
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatProjet()),
                        );
                      },
                      child: Text(
                        'PARTICIPANT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),

                    // Bouton à droite
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatProjet()),
                        );
                      },
                      child: Text(
                        'PARTICIPANT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Bouton à droite
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListVersement()),
                        );
                      },
                      child: Text(
                        'VERSEMENT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),

                    // Bouton à droite 2
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListAmandes()),
                        );
                      },
                      child: Text(
                        'RETARD VERSEMENT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),

                    // Bouton à droite 3
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatProjet()),
                        );
                      },
                      child: Text(
                        'PARTICIPANT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),

                    // Bouton à droite
                    ElevatedButton(
                      onPressed: () {
                        // Ajouter la logique du bouton droit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatProjet()),
                        );
                      },
                      child: Text(
                        'PARTICIPANT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
