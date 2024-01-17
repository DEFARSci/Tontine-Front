import 'package:flutter/material.dart';

class RetardVersement extends StatelessWidget {
  const RetardVersement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
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
                      // Ajouter la logique du bouton Menu
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
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              
              
              child: Form(
                child: Column(
                  children: [Container(
  width: largeurEcran * 0.4 - 2 * 10, // Réduire la largeur du bouton à 80% de la largeur de l'écran moins les marges
  child: ElevatedButton(
    onPressed: () {
      // Ajouter la logique du bouton du formulaire
    },
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 230, 231, 232),
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      side: BorderSide(
        color: Color.fromARGB(255, 23, 12, 148),
        width: 2.0,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        'LEKET BI',
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    ),
  ),
),

              
            SizedBox(height: 16.0),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Wrap(
                          spacing: 16.0,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Ajouter la logique du bouton du formulaire
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 230, 231, 232),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 23, 12, 148),
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'RESTE TIRAGES',
                                  style: TextStyle(fontSize: 10, color: Colors.black),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Ajouter la logique du bouton du formulaire
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 230, 231, 232),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 23, 12, 148),
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'PARTICIPANTS',
                                  style: TextStyle(fontSize: 10, color: Colors.black),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Ajouter la logique du bouton du formulaire
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 230, 231, 232),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 23, 12, 148),
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'RECU ARGENT',
                                  style: TextStyle(fontSize: 10, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Container(
  width: largeurEcran * 0.4 - 2 * 10, // Conservez cette partie pour le padding
  child: ElevatedButton(
    onPressed: () {
      // Ajouter la logique du bouton Valider
    },
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 23, 12, 148),
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0), // Ajustez la valeur de padding
      child: Text(
        'Amande General',
        style: TextStyle(fontSize: 14), // Ajustez la valeur de fontSize
      ),
    ),
  ),
  
)
,
     SizedBox(height: 16.0),

          Container(
  width: largeurEcran * 0.6 - 2 * 10, // Conservez cette partie pour le padding
  child: ElevatedButton(
    onPressed: () {
      // Ajouter la logique du bouton Valider
    },
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 23, 12, 148),
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0), // Ajustez la valeur de padding
      child: Text(
        'Versement en Retard',
        style: TextStyle(fontSize: 14), // Ajustez la valeur de fontSize
      ),
    ),
  ),
  
),                              SizedBox(height: 16.0),

                           


Container(
  decoration: BoxDecoration(
    border: Border.all(
                color: Color.fromARGB(255, 23, 12, 148),
      width: 2.0,
    ),
    borderRadius: BorderRadius.circular(8.0),
  ),
  padding: EdgeInsets.all(8.0),
  child: Column(
    children: [
      ElevatedButton(
        onPressed: () {
          // Ajouter la logique du deuxième bouton
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size((largeurEcran - 52 - 20) / 2, 0),
          padding: EdgeInsets.symmetric(vertical: 22.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 23, 12, 148),
                size: 30.0,
              ),
            ),
            SizedBox(
              width: 22.0,
            ),
            Text(
              'SALIOU BARRY',
              style: TextStyle(
                color: Color.fromARGB(255, 23, 12, 148),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 16.0),
      ElevatedButton(
        onPressed: () {
          // Ajouter la logique du deuxième bouton
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size((largeurEcran - 52 - 20) / 2, 0),
          padding: EdgeInsets.symmetric(vertical: 22.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 23, 12, 148),
                size: 30.0,
              ),
            ),
            SizedBox(
              width: 22.0,
            ),
            Text(
              'OUSMANE BODIAN',
              style: TextStyle(
                color: Color.fromARGB(255, 23, 12, 148),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 16.0),
      ElevatedButton(
        onPressed: () {
          // Ajouter la logique du deuxième bouton
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size((largeurEcran - 52 - 20) / 2, 0),
          padding: EdgeInsets.symmetric(vertical: 22.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 23, 12, 148),
                size: 30.0,
              ),
            ),
            SizedBox(
              width: 22.0,
            ),
            Text(
              'KHADRE GUEYE',
              style: TextStyle(
                color: Color.fromARGB(255, 23, 12, 148),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 16.0),
      ElevatedButton(
        onPressed: () {
          // Ajouter la logique du deuxième bouton
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size((largeurEcran - 52 - 20) / 2, 0),
          padding: EdgeInsets.symmetric(vertical: 22.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 23, 12, 148),
                size: 30.0,
              ),
            ),
            SizedBox(
              width: 22.0,
            ),
            Text(
              'PAPE CHEIKH NDIAYE',
              style: TextStyle(
                color: Color.fromARGB(255, 23, 12, 148),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
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
    primary: Color.fromARGB(255, 23, 12, 148),

  ),
),

            ],
          ),

                  ],
                  
                  
                ),
              ),
            ),
          ],
          
        ),
        
      ),
    );
  }
}
