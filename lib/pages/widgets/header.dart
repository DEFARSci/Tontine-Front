import 'package:flutter/material.dart';
import 'package:tontinefront/page_parametre.dart';
import 'package:tontinefront/pages/pageapresconnexion.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 23, 12, 148),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Keule bi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(0),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30.0,
                ),
                color: Color.fromARGB(255, 23, 12, 148),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageParametre()),
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 0,
        ),
        Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.message,
                  size: 30.0,
                ),
                color: Color.fromARGB(255, 23, 12, 148),
                onPressed: () {
                  // Ajouter la logique du bouton Message
                },
              ),
              SizedBox(width: 16.0),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 30.0,
                ),
                color: Color.fromARGB(255, 23, 12, 148),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApresCon()),
                  );
                },
              ),
              SizedBox(width: 16.0),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                color: Color.fromARGB(255, 23, 12, 148),
                onPressed: () {
                  // Ajouter la logique du bouton Recherche
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  size: 30.0,
                ),
                color: Color.fromARGB(255, 23, 12, 148),
                onPressed: () {
                  // Ajouter la logique du bouton Profil
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
