import 'package:flutter/material.dart';
import 'package:tontinefront/list_recuargent.dart';
import 'package:tontinefront/pages/widgets/header.dart';

class Participant {
  final String nom;
  final String prenom;
  final int nombreDeMains;
  final double sommeVersee;

  Participant({
    required this.nom,
    required this.prenom,
    required this.nombreDeMains,
    required this.sommeVersee,
  });
}

class ResteTirage extends StatelessWidget {
  const ResteTirage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Participant> versements = [
      Participant(
          nom: 'John', prenom: 'Doe', nombreDeMains: 2, sommeVersee: 100.0),
      Participant(
          nom: 'Jane', prenom: 'Doe', nombreDeMains: 3, sommeVersee: 150.0),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              child: HeaderSection(),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Argent reçu button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 23, 12, 148),
                ),
                child: Text(
                  'Reste tirage',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 16),
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
                    'Reçu argent',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListRecuargent()),
                    );
                    print('Reste tirage button clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 23, 12, 148),
                  ),
                  child: Text(
                    'Nombre',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromARGB(255, 6, 2, 201),
                    width: 2), // Bordure bleu foncé
              ),
              child: SizedBox(
                height: 200, // Ajustez la hauteur selon vos besoins
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Nom')),
                      DataColumn(label: Text('Prenom')),
                      DataColumn(label: Text('N. Mains')),
                      DataColumn(label: Text('Somme Versée')),
                    ],
                    rows: versements.map((versement) {
                      return DataRow(
                        cells: [
                          DataCell(Text(versement.nom)),
                          DataCell(Text(versement.prenom)),
                          DataCell(Text(versement.nombreDeMains.toString())),
                          DataCell(Text(versement.sommeVersee.toString())),
                        ],
                      );
                    }).toList(),
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
