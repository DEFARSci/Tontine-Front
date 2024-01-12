import 'package:flutter/material.dart';
import 'package:tontinefront/list_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
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
                print('LEKET BI button clicked');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                'LEKET BI',
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
                  // print('Participant button clicked');
                   Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) => ListPage()),
                     );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'liste participant',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
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
            ],
          ),

          SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Versement button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Versement',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(' Retard Versement button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  ' Retard Versement',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
           SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Ajouter Tirage button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Ajouter Tirage',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(' Tirage button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  ' Tirage',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
           SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Total Amande button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Total Amande',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(' Modifier Formulaire button clicked');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  ' Modifier Formulaire',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
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
    primary: Colors.blue,
  ),
),

            ],
          ),
        
        ],
        
        
      ),
      
      
    );
  }
}
