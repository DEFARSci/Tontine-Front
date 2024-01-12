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

class ListAmandes extends StatelessWidget {
  const ListAmandes({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Participant> versements = [
      Participant(nom: 'John', prenom: 'Doe', nombreDeMains: 2, sommeVersee: 100.0),
      Participant(nom: 'Jane', prenom: 'Doe', nombreDeMains: 3, sommeVersee: 150.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Liste Amandes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Color.fromARGB(255, 23, 12, 148),),
                onPressed: () {
                  print('Home icon clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.message, color: Color.fromARGB(255, 23, 12, 148),),
                onPressed: () {
                  print('Message icon clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Color.fromARGB(255, 23, 12, 148),),
                onPressed: () {
                  print('Settings icon clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.search, color: Color.fromARGB(255, 23, 12, 148),),
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
                print('Amandes');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 23, 12, 148),
              ),
              child: Text(
                'Amandes',
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
                  primary: Color.fromARGB(255, 23, 12, 148),
                ),
                child: Text(
                  'Recu argent',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Reste Tirage button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 23, 12, 148),
                ),
                child: Text(
                  'Reste Tirage',
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
                 

        ],
        
      ),
      
    );
  }
}
