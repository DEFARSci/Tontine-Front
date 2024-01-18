// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tontinefront/pages/menuprojet.dart';
import 'package:tontinefront/pages/widgets/header.dart';
import 'package:tontinefront/rest_tirage.dart';

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

class ListParticipant extends StatelessWidget {
  ListParticipant();

  final List<Participant> participants = [
    Participant(
        nom: 'Doe', prenom: 'John', nombreDeMains: 3, sommeVersee: 30.0),
    Participant(
        nom: 'Smith', prenom: 'Jane', nombreDeMains: 5, sommeVersee: 50.0),
    // Ajoutez d'autres participants selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
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
                  print('Participant button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 23, 12, 148),
                ),
                child: const Text(
                  'Participant',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResteTirage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 23, 12, 148),
                  ),
                  child: const Text(
                    'Reste tirage',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResteTirage()),
                    );
                    print('Recu argent button clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 23, 12, 148),
                  ),
                  child: const Text(
                    'Recu argent',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Nombres button clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 23, 12, 148),
                  ),
                  child: const Text(
                    'Nombres',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 23, 12, 148),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: const Text('Nom')),
                      DataColumn(label: const Text('Prenom')),
                      DataColumn(label: const Text('Nombre de Mains')),
                      DataColumn(label: const Text('Somme Versée')),
                    ],
                    rows: participants.map((participant) {
                      return DataRow(
                        cells: [
                          DataCell(Text(participant.nom)),
                          DataCell(Text(participant.prenom)),
                          DataCell(Text(participant.nombreDeMains.toString())),
                          DataCell(Text(participant.sommeVersee.toString())),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
