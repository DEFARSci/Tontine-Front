import 'package:flutter/material.dart';
import 'package:tontinefront/pages/liste_participant.dart';
import 'package:tontinefront/pages/mode_amande.dart';
import 'package:tontinefront/pages/widgets/header.dart';

class AjoutMembre extends StatelessWidget {
  const AjoutMembre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              child: HeaderSection(),
            ),

            SizedBox(height: 16.0),
            // Nouveau conteneur avec titre centré et fond arrondi
            Container(
              width: 350,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(13.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 12, 148),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'AJOUTER LES MEMBRES DU TONTINE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Formulaire avec des champs, deux Checkbox et un bouton
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
                        labelText: 'NOM ET PRENOM',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'NUMERO',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'NOMBRE DE MAIN',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {
                            // Ajouter la logique de la Checkbox "Admin"
                          },
                        ),
                        Text('Admin'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {
                            // Ajouter la logique de la Checkbox "Simple"
                          },
                        ),
                        Text('Simple'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      width: largeurEcran - 2 * 10,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListParticipant()),
                      );
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
