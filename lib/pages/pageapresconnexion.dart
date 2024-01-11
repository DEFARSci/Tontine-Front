import 'package:flutter/material.dart';
import 'package:tontinefront/pages/creationprojet.dart';
import '../list_page.dart';

class ApresCon extends StatelessWidget {
  const ApresCon({Key? key}) : super(key: key);

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
      backgroundColor: Color.fromARGB(255, 243, 245, 246),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      size: 30.0, // Taille de l'icône
                    ),
                    color:
                        Color.fromARGB(255, 23, 12, 148), // Couleur de l'icône
                    onPressed: () {
                      // Ajouter la logique du bouton Message
                    },
                  ),
                  SizedBox(width: 16.0), // Espacement entre les icônes
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 30.0, // Taille de l'icône
                    ),
                    color:
                        Color.fromARGB(255, 23, 12, 148), // Couleur de l'icône
                    onPressed: () {
                      // Ajouter la logique du bouton Menu
                    },
                  ),
                  SizedBox(width: 16.0), // Espacement entre les icônes
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30.0, // Taille de l'icône
                    ),
                    color:
                        Color.fromARGB(255, 23, 12, 148), // Couleur de l'icône
                    onPressed: () {
                      // Ajouter la logique du bouton Recherche
                    },
                  ),
                  Spacer(), // Espace extensible pour pousser l'icône de profil à droite
                  IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 30.0, // Taille de l'icône
                    ),
                    color:
                        Color.fromARGB(255, 23, 12, 148), // Couleur de l'icône
                    onPressed: () {
                      // Ajouter la logique du bouton Profil
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0), // Espacement entre les conteneurs
            // Nouveau conteneur avec titre centré et fond arrondi
            Container(
              width: 150,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Tontine',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0), // Espacement entre les conteneurs

            // Nouveau conteneur en bas avec texte et boutons
            Container(
              margin: EdgeInsets.all(10), // Marge ajoutée
              padding: EdgeInsets.all(16.0),
              height: 300, // Hauteur fixe pour le conteneur
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 242),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 23, 12, 148), // Couleur du contour
                  width: 2.0,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'BIENVENUE DANS VOS PROJETS ET MERCI POUR VOTRE CONFIANCE',
                    style: TextStyle(
                      color: Color.fromARGB(255, 23, 12, 148),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ), // Espacement entre le texte et les boutons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Dropdown à gauche du bouton
                      Container(
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButton<String>(
                          items: ['Leket bi', 'Caisse bi'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (value == 'Leket bi') {
                                        // Action pour Leket bi
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MenuProjet()),
                                        );
                                        // Ajouter la logique du bouton Leket bi
                                      } else if (value == 'Caisse bi') {
                                        // Action pour Caisse bi
                                        // Ajouter la logique du bouton Caisse bi
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 230, 231, 232),
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      side: BorderSide(
                                        color: Color.fromARGB(255, 23, 12, 148),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Text(value),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
    
                          onChanged: (String? newValue) {
                            // Ajouter la logique du dropdown
                            
                          },
                          
                          hint: Text(
                            'Mes Projets',
                            style: TextStyle(
                              color: Color.fromARGB(255, 23, 12, 148),
                            ),
                          ),
                          itemHeight:
                              50, // Hauteur des éléments dans le dropdown
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
                          'Nouveau Projet',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                          ),
                        ),
                      ),

                      //liste des tirages
                          ElevatedButton(
                        onPressed: () {
                          // Ajouter la logique du bouton droit
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListPage()),
                          );
                        },
                        child: Text(
                          'Liste des tirages',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                          ),
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
