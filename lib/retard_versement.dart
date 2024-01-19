import 'package:flutter/material.dart';
import 'package:tontinefront/pages/list_amandes.dart';
import 'package:tontinefront/pages/liste_participant.dart';
import 'package:tontinefront/pages/widgets/header.dart';
import 'package:tontinefront/rest_tirage.dart';

class RetardVersement extends StatelessWidget {
  const RetardVersement({Key? key}) : super(key: key);

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
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Form(
                child: Column(
                  children: [
                    Container(
                      width: largeurEcran * 0.5 -
                          2 * 10, // Conservez cette partie pour le padding
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListAmandes()),
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
                          padding: const EdgeInsets.all(
                              10.0), // Ajustez la valeur de padding
                          child: Text(
                            'Amande General',
                            style: TextStyle(
                                fontSize: 14), // Ajustez la valeur de fontSize
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Wrap(
                          spacing: 10.0,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                print('Recu argent button clicked');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 23, 12, 148),
                              ),
                              child: Text(
                                'Reste tirage',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print('Recu argent button clicked');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 23, 12, 148),
                              ),
                              child: Text(
                                'Participant',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 23, 12, 148),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Ajouter la logique du deuxième bouton
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size((largeurEcran - 52 - 20) / 2, 0),
                              padding: EdgeInsets.symmetric(vertical: 22.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 23, 12, 148),
                                    size: 30.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 22.0,
                                ),
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
                          ElevatedButton(
                            onPressed: () {
                              // Ajouter la logique du deuxième bouton
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size((largeurEcran - 52 - 20) / 2, 0),
                              padding: EdgeInsets.symmetric(vertical: 22.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 23, 12, 148),
                                    size: 30.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 22.0,
                                ),
                                Text(
                                  'OUSMANE BODIAN',
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
                              minimumSize:
                                  Size((largeurEcran - 52 - 20) / 2, 0),
                              padding: EdgeInsets.symmetric(vertical: 22.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 23, 12, 148),
                                    size: 30.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 22.0,
                                ),
                                Text(
                                  'KHADRE GUEYE',
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
                              minimumSize:
                                  Size((largeurEcran - 52 - 20) / 2, 0),
                              padding: EdgeInsets.symmetric(vertical: 22.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 23, 12, 148),
                                    size: 30.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 22.0,
                                ),
                                Text(
                                  'PAPE CHEIKH NDIAYE',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 23, 12, 148),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
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
            ),
          ],
        ),
      ),
    );
  }
}
