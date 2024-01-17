import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class NombreTirage extends StatefulWidget {
  @override
  _NombreTirageState createState() => _NombreTirageState();
}

class _NombreTirageState extends State<NombreTirage> {
  int numberOfDrawings = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tirages', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Ajoutez ici le code pour gérer l'action du bouton "Tirages"
                  // (par exemple, afficher une boîte de dialogue avec les détails du tirage)
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Détails du tirage'),
                        content: Text('Ajoutez ici les détails du tirage.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Fermer'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                child: Text('Tirages'),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Ajoutez ici le code pour gérer l'action du bouton "Reste tirages"
                            // (par exemple, décrémenter le nombre de tirages)
                            setState(() {
                              numberOfDrawings--;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[900],
                            onPrimary: Colors.white,
                          ),
                          child: Text('Reste tirages'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Ajoutez ici le code pour gérer l'action du bouton "Reçu argent"
                            // (par exemple, incrémenter le nombre de tirages)
                            setState(() {
                              numberOfDrawings++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[900],
                            onPrimary: Colors.white,
                          ),
                          child: Text('Reçu argent'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Cliquez sur "Tirés" pour effectuer votre tirage.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nombre de tirages effectués : $numberOfDrawings',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Ajoutez ici le code pour gérer l'action du bouton "Tirés"
                  // (par exemple, afficher un message ou effectuer une action spécifique)
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  onPrimary: Colors.white,
                ),
                child: Text('Tirés'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tirages App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NombreTirage(),
    );
  }
}