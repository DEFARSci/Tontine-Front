import 'package:flutter/material.dart';
import 'package:tontinefront/pages/creationprojet.dart';
import 'package:tontinefront/pages/menuprojet.dart';
import 'package:tontinefront/pages/widgets/header.dart';

class ApresCon extends StatelessWidget {
  const ApresCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 140,
            child: HeaderSection(),
          ),
          SizedBox(height: 16),
          SizedBox(height: 16.0),
          Container(
            width: 150,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 23, 12, 148),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Tontine',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(16.0),
            height: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 242),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromARGB(255, 23, 12, 148),
                width: 2.0,
              ),
            ),
            child: Column(
              children: [
                Text(
                  'BIENVENUE DANS VOS PROJETS ET MERCI POUR VOTRE CONFIANCE',
                  style: TextStyle(
                    color: Color.fromARGB(255, 23, 12, 148),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        items: ['Leket bi', 'Caisse bi'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue == 'Leket bi') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuProjet(),
                              ),
                            );
                          } else if (newValue == 'Caisse bi') {
                            // Ajouter la logique pour Caisse bi
                          }
                        },
                        hint: Text(
                          'Mes Projets',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 12, 148),
                          ),
                        ),
                        itemHeight: 50,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatProjet(),
                          ),
                        );
                      },
                      child: Text(
                        'Nouveau Projet',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 12, 148),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
