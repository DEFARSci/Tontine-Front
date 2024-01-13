import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class Member {
  String firstName;
  String lastName;
  String phoneNumber;
  int numberOfHands;
  bool isAdmin;

  Member({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.numberOfHands,
    required this.isAdmin,
  });
}

class AddMemberPage extends StatefulWidget {
  @override
  _AddMemberPageState createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController handsController = TextEditingController();
  bool isAdmin = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ajouter un Membre',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Ajoutez ici le code pour ajouter un membre à la tontine
                  Member newMember = Member(
                    firstName: firstNameController.text,
                    lastName: lastNameController.text,
                    phoneNumber: phoneNumberController.text,
                    numberOfHands: int.parse(handsController.text),
                    isAdmin: isAdmin,
                  );

                  // Affichez les détails du nouveau membre (vous pouvez ajuster cette partie)
                  print("Nouveau Membre : ${newMember.firstName} ${newMember.lastName}, Téléphone : ${newMember.phoneNumber}, Mains : ${newMember.numberOfHands}, Admin : ${newMember.isAdmin}");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  onPrimary: Colors.white,
                ),
                child: Text('Ajouter un Membre'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(
                  labelText: 'Prénom',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Numéro de Téléphone',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: handsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Nombre de Mains',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Rôle du Membre :',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Membre Simple'),
                  Radio(
                    value: false,
                    groupValue: isAdmin,
                    onChanged: (value) {
                      setState(() {
                        isAdmin = value as bool;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  Text('Admin'),
                  Radio(
                    value: true,
                    groupValue: isAdmin,
                    onChanged: (value) {
                      setState(() {
                        isAdmin = value as bool;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),

                // Bouton de retour à la page d'accueil
                ElevatedButton(
                  onPressed: () {
                // Utilisez Navigator.pushReplacement pour aller directement à la page d'accueil
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AddMemberPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], // Couleur de fond du bouton
                  ),
                child: Text('Valider'),
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
      title: 'Ajouter Member',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddMemberPage(),
    );
  }
}