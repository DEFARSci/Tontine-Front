import 'package:flutter/material.dart';
import 'rest_tirage.dart';






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

class ListPage extends StatelessWidget {
   // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
   ListPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false, // C'est cette ligne qui désactive la bannière de débogage
      title: 'Bienvenue chez Gustu',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  MyHomePage();

  final List<Participant> participants = [
    Participant(nom: 'Doe', prenom: 'John', nombreDeMains: 3, sommeVersee: 30.0),
    Participant(nom: 'Smith', prenom: 'Jane', nombreDeMains: 5, sommeVersee: 50.0),
    // Ajoutez d'autres participants selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('GUSTU'),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Ajustez cette ligne
        children: [
         // ...

Row(
  crossAxisAlignment: CrossAxisAlignment.start, // Alignez les icônes à gauche
  children: [
    IconButton(
      // ignore: prefer_const_constructors
      icon: Icon(Icons.home, color: Color.fromARGB(255, 23, 12, 148),),
      onPressed: () {
        // ignore: avoid_print
        print('Home icon clicked');
      },
    ),
    IconButton(
      // ignore: prefer_const_constructors
      icon: Icon(Icons.message, color: Color.fromARGB(255, 23, 12, 148),),
      onPressed: () {
        // ignore: avoid_print
        print('Message icon clicked');
      },
    ),
    IconButton(
      // ignore: prefer_const_constructors
      icon: Icon(Icons.settings, color: Color.fromARGB(255, 23, 12, 148),),
      onPressed: () {
        // ignore: avoid_print
        print('Settings icon clicked');
      },
    ),
    IconButton(
      // ignore: prefer_const_constructors
      icon: Icon(Icons.search, color: Color.fromARGB(255, 23, 12, 148),),
      onPressed: () {
        // ignore: avoid_print
        print('Search icon clicked');
      },
    ),
  ],
),

// ...
          // ignore: prefer_const_constructors
          SizedBox(height: 20),
         Center(
  child:ElevatedButton(
  onPressed: () {
    // ignore: avoid_print
    print('Participant button clicked');
  },
  style: ElevatedButton.styleFrom(
    // ignore: deprecated_member_use
    primary: Color.fromARGB(255, 23, 12, 148), // Spécifie la couleur de fond
  ),
  // ignore: prefer_const_constructors
  child: Text(
    'Participant',
    // ignore: prefer_const_constructors
    style: TextStyle(color: Colors.white), // Couleur du texte
  ),
),

),

          // ignore: prefer_const_constructors
          SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            children: [
              // ...

ElevatedButton(
  onPressed: () {
    // Utilisez MaterialPageRoute pour la navigation normale
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResteTirage()),
    );
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
    // ignore: avoid_print
    print('Recu argent button clicked');
  },
  style: ElevatedButton.styleFrom(
    // ignore: deprecated_member_use
    primary: Color.fromARGB(255, 23, 12, 148),
  ),
  // ignore: prefer_const_constructors
  child: Text(
    'Recu argent',
    // ignore: prefer_const_constructors
    style: TextStyle(color: Colors.white),
  ),
),

ElevatedButton(
  onPressed: () {
    // ignore: avoid_print
    print('Nombres button clicked');
  },
  style: ElevatedButton.styleFrom(
    // ignore: deprecated_member_use
    primary: Color.fromARGB(255, 23, 12, 148),
  ),
  // ignore: prefer_const_constructors
  child: Text(
    'Nombres',
    // ignore: prefer_const_constructors
    style: TextStyle(color: Colors.white),
  ),
),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                // ignore: prefer_const_literals_to_create_immutables
                columns: [
                  // ignore: prefer_const_constructors
                  DataColumn(label: Text('Nom')),
                  // ignore: prefer_const_constructors
                  DataColumn(label: Text('Prenom')),
                  // ignore: prefer_const_constructors
                  DataColumn(label: Text('Nombre de Mains')),
                  // ignore: prefer_const_constructors
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

// void main() {
//   runApp( MyApp());
// }
