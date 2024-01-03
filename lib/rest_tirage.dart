import 'package:flutter/material.dart';

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
    // Exemple de données de participants
    List<Participant> participants = [
      Participant(nom: 'John', prenom: 'Doe', nombreDeMains: 2, sommeVersee: 100.0),
      Participant(nom: 'Jane', prenom: 'Doe', nombreDeMains: 3, sommeVersee: 150.0),
      // Ajoutez d'autres participants au besoin
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Reste Tirage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ... Ajoutez d'autres widgets ici

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.blue),
                onPressed: () {
                  print('Home icon clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.message, color: Colors.blue),
                onPressed: () {
                  print('Message icon clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.blue),
                onPressed: () {
                  print('Settings icon clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.blue),
                onPressed: () {
                  print('Search icon clicked');
                },
              ),
            ],
          ),

          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                print('Reste tirage button clicked');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                'Reste tirage',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Recu argent button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Recu argent',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Nombres button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Nombres',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Nom')),
                  DataColumn(label: Text('Prenom')),
                  DataColumn(label: Text('Nombre de Mains')),
                  DataColumn(label: Text('Somme Versée')),
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
        ],
      ),
    );
  }
}
