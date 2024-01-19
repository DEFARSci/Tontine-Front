import 'package:flutter/material.dart';
import 'package:tontinefront/pages/apres_tirage.dart';
import 'package:tontinefront/pages/widgets/header.dart';

class Tirages extends StatefulWidget {
  const Tirages({Key? key}) : super(key: key);

  @override
  _AjoutMembreState createState() => _AjoutMembreState();
}

class _AjoutMembreState extends State<Tirages> {
  int numberOfDrawings = 0;

  @override
  Widget build(BuildContext context) {
    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 140,
            child: HeaderSection(),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 23, 12, 148)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          numberOfDrawings--;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 23, 12, 148),
                        onPrimary: Colors.white,
                      ),
                      child: Text('Reste tirages'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          numberOfDrawings++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 23, 12, 148),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApresTirage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 23, 12, 148),
              onPrimary: Colors.white,
            ),
            child: Text('Tirés'),
          ),
        ],
      ),
    );
  }
}
