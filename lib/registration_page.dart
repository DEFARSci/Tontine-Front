// import 'package:get/get.dart'; // Ajoutez cette ligne pour importer GetX

// import 'package:flutter/material.dart';
// import 'login_page.dart';
// import 'home_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: RegistrationPage(),
//     );
//   }
// }

// class RegistrationPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Inscription',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Color.fromARGB(255, 207, 206, 233),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Champ de prénom
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Prénom',
//                   ),
//                 ),
//                 SizedBox(height: 16.0),

//                 // Champ de nom
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Nom',
//                   ),
//                 ),
//                 SizedBox(height: 16.0),

//                 // Champ de numéro de téléphone
//                 TextField(
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     labelText: 'Numéro de téléphone',
//                   ),
//                 ),
//                 SizedBox(height: 16.0),

//                 // Champ de mot de passe
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Mot de passe',
//                   ),
//                 ),
//                 SizedBox(height: 16.0),

//                  // Champ de confirmation de mot de passe
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Confirmation de mot de passe',
//                   ),
//                 ),
//                 SizedBox(height: 16.0),

//                 // Bouton d'inscription
//                 Obx(() {
//                     return ElevatedButton(
//                       onPressed: () {
//                         // Ajoutez ici le code d'inscription
//                         print('Inscription réussie');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(
//                             255, 23, 12, 148), // Couleur de fond du bouton
//                       ),
//                       child: Text('S\'inscrire',
//                           style: TextStyle(
//                             color: Colors.white,
//                           )),
//                     );
//                   }
//                 ),
//                 SizedBox(height: 16.0),

//                 // Lien pour rediriger vers la page d'inscription
//                 TextButton(
//                   onPressed: () {
//                     // Ajoutez ici le code pour rediriger vers la page d'inscription
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => LoginPage()),
//                     );
//                   },
//                   child: Text("Vous avez déjà un compte ? Connectez-vous"),
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// -------------------------

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart'; // Importing the google_fonts package
import 'package:get/get.dart';
import 'package:tontinefront/controllers/authentification.dart';
import 'package:tontinefront/home_page.dart';
import 'package:tontinefront/login_page.dart';
import 'package:tontinefront/pages/widgets/inputs_widget.dart'; // Importing the google_fonts package

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _password_confirmedController =
      TextEditingController();

  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Inscription',
          style: GoogleFonts.poppins(
            fontSize: size * 0.060,
            color: Color.fromARGB(255, 23, 12, 148),
          ),
        )),
        backgroundColor: Color.fromARGB(255, 230, 231, 232),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputWidget(
                hintText: 'prenom',
                obscureText: false,
                controller: _prenomController,
              ),
              const SizedBox(
                height: 20,
              ),
              InputWidget(
                hintText: 'nom',
                obscureText: false,
                controller: _nomController,
              ),
              const SizedBox(
                height: 20,
              ),
              InputWidget(
                hintText: 'telephone',
                obscureText: false,
                controller: _telephoneController,
              ),
              const SizedBox(
                height: 20,
              ),
              InputWidget(
                hintText: 'Password',
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              InputWidget(
                hintText: 'Password Confirmation',
                obscureText: true,
                controller: _password_confirmedController,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 23, 12, 148),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 25,
                  ),
                ),
                onPressed: () async {
                  await _authenticationController.register(
                    prenom: _prenomController.text.trim(),
                    nom: _nomController.text.trim(),
                    telephone: _telephoneController.text.trim(),
                    password: _passwordController.text.trim(),
                    password_confirmed:
                        _password_confirmedController.text.trim(),
                  );
                  if (!_authenticationController.isLoading.value) {
                    Get.off(() => const LoginPage());
                  }
                },
                child: Obx(
                  () {
                    return _authenticationController.isLoading.value
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromARGB(255, 252, 252, 252),
                            ),
                          )
                        : Text(
                            'Register',
                            style: GoogleFonts.poppins(
                                fontSize: size * 0.030, color: Colors.white),
                          );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: Text(
                  'Vous avez deja un compte ? Connectez-vous',
                  style: GoogleFonts.poppins(
                    fontSize: size * 0.030,
                    color: Color.fromARGB(255, 23, 12, 148),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Bouton de retour à la page d'accueil
              ElevatedButton(
                onPressed: () {
                  // Utilisez Navigator.pushReplacement pour aller directement à la page d'accueil
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(
                      255, 23, 12, 148), // Couleur de fond du bouton
                ),
                child: Text(
                  'Retour à l\'accueil',
                  style: GoogleFonts.poppins(
                    fontSize: size * 0.030,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
