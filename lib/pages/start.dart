import 'package:flutter/material.dart';
import 'package:tontinefront/pages/ajout_membre.dart';
import 'package:tontinefront/pages/ajout_tirages.dart';
import 'package:tontinefront/pages/ajout_versement.dart';
import 'package:tontinefront/pages/mode_amande.dart';
import 'package:tontinefront/pages/tirages.dart';
import 'package:tontinefront/pages/widgets/header.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

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
                color:Color.fromARGB(255, 207, 206, 233),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'BIENVENU DANS VOTRE TONTINE',
                  style: TextStyle(
                    color: Color.fromARGB(255, 23, 12, 148),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 16.0),

            Container(
              width: largeurEcran - 2 * 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AjoutMembre()),
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
                    'AJOUTER LES MEMBRES DU TONTINE',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 16.0),

            Container(
              width: largeurEcran - 2 * 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AjoutVersement()),
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
                    'AJOUTER VERSEMENT',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16.0),

            Container(
              width: largeurEcran - 2 * 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AjouteTirage()),
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
                    'AJOUTER TIRAGE',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            Container(
              width: largeurEcran - 2 * 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tirages()),
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
                    ' TIRAGE',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
