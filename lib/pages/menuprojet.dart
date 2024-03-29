import 'package:flutter/material.dart';
import 'package:tontinefront/list_recuargent.dart';
import 'package:tontinefront/pages/ajout_tirages.dart';

import 'package:tontinefront/pages/apres_tirage.dart';
import 'package:tontinefront/pages/creationprojet.dart';
import 'package:tontinefront/pages/liste_participant.dart';
import 'package:tontinefront/pages/tirages.dart';
import 'package:tontinefront/pages/widgets/header.dart';
import 'package:tontinefront/pages/list_versement.dart';
import 'package:tontinefront/pages/list_amandes.dart';
import 'package:tontinefront/rest_tirage.dart';
import 'package:tontinefront/retard_versement.dart';

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
              height: 140,
              child: HeaderSection(),
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
                  'LEKET BI',
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListParticipant()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'PARTICIPANT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListRecuargent()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'REÇU ARGENT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResteTirage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'RESTE TIRAGES',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListVersement()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'VERSEMENT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RetardVersement()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'RETARD VERSEMENT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListAmandes()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'TOTAL AMANDES',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListAmandes()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 0),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'REGLEMMENT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 23, 12, 148),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Utiliser le Wrap ici
                  Wrap(
                    spacing: 10.0,
                    children: [
                      TextButton.icon(
                        onPressed: () async {
                          // Afficher le calendrier
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(), 
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );

                          // Si l'utilisateur a choisi une date, affichez-la dans la console
                          if (pickedDate != null) {
                            print('Date sélectionnée: $pickedDate');
                          }
                        },
                        icon: Icon(Icons.calendar_today),
                        label: Text('Date de debut du tontine'),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 23, 12, 148),
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
