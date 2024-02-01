import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tontinefront/controllers/creation.dart';
// import 'package:tontinefront/controllers/creation_controller.dart'; // Corrected import path

import 'package:tontinefront/pages/ajout_membre.dart';
import 'package:tontinefront/pages/mode_amande.dart';
import 'package:tontinefront/pages/start.dart';
import 'package:tontinefront/pages/widgets/header.dart';

// Page de création du projet
class CreatProjet extends StatelessWidget {
  const CreatProjet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nomController = TextEditingController();
    final TextEditingController _modaliteController = TextEditingController();
    final CreationController _creationController = Get.put(CreationController());

    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // En-tête de la page
            Container(
              height: 140,
              child: HeaderSection(),
            ),
            SizedBox(height: 16),  
            Container(
              width: 250,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(13.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'AJOUTER PROJET',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),  

            // Vos widgets existants...
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 249, 249, 249),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 23, 12, 148),
                  width: 2.0,
                ),
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nomController, // Ajoutez le contrôleur de texte
                    decoration: InputDecoration(
                      labelText: 'NOM DU PROJET',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  // Autres widgets...
                  TextFormField(
                    controller: _modaliteController, // Ajoutez le contrôleur de texte
                    decoration: InputDecoration(
                      labelText: 'MODALITÉ DU TONTINE',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 45.0),
                  // Autres widgets...
                  ElevatedButton(
                    onPressed: () async {
                      await _creationController.projets(
                        nom: _nomController.text.trim(),
                        modalite: _modaliteController.text.trim(),
                      );
                      if (!_creationController.isLoading.value) {
                        Get.off(() => const Start());
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 23, 12, 148)), // Couleur bleue
                      minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 60.0)), // Taille du bouton
                    ),
                    child: Text(
                      'Validation',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24.0, // Taille du texte
                      ),
                    ), // Ajout du texte au bouton
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
