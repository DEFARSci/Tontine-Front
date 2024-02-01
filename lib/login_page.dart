// import 'package:flutter/material.dart';
// import 'package:tontinefront/pages/password_page.dart';
// import 'registration_page.dart';
// import 'pages/pageapresconnexion.dart';
// // import 'package:laraflutter/pages/widgets/inputs_widget.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final AuthenticationController _authenticationController =
//       Get.put(AuthenticationController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Connexion',
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
//                 // Lien pour la récupération du mot de passe
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => PasswordPage()),
//                     );
//                     print('Mot de passe oublié');
//                   },
//                   child: Text('Mot de passe oublié ?'),
//                 ),
//                 SizedBox(height: 16.0),

//                 // Bouton de connexion
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ApresCon()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Color.fromARGB(
//                         255, 23, 12, 148), // Couleur de fond du bouton
//                   ),
//                   child: Text('Se connecter',
//                       style: TextStyle(
//                         color: Colors.white,
//                       )),
//                 ),
//                 SizedBox(height: 16.0),

//                 // Lien pour rediriger vers la page d'inscription
//                 TextButton(
//                   onPressed: () {
//                     // Ajoutez ici le code pour rediriger vers la page d'inscription
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => RegistrationPage()),
//                     );
//                   },
//                   child: Text("Vous n'avez pas de compte ? Inscrivez-vous"),
//                 ),
//                 SizedBox(height: 8.0),

//                 // Bouton de retour à la page d'accueil
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Color.fromARGB(
//                         255, 23, 12, 148), // Couleur de fond du bouton
//                   ),
//                   child: Text('Retour à l\'accueil',
//                       style: TextStyle(
//                         color: Colors.white,
//                       )),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
// import 'package:laraflutter/views/registerpage.dart';
// import 'package:laraflutter/views/widgets/inputs_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:tontinefront/controllers/authentification.dart';
import 'package:tontinefront/home_page.dart';
import 'package:tontinefront/pages/widgets/inputs_widget.dart';
import 'package:tontinefront/registration_page.dart'; // Importing the google_fonts package
// import 'package:laraflutter/views/loginpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Connexion',
          style: GoogleFonts.poppins(
            fontSize: size * 0.060,
            color: const Color.fromARGB(255, 23, 12, 148),
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
                hintText: 'Telephone',
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Mot de passe oublie ?",
                  // style: TextStyle(
                  //   color: Color.fromARGB(255, 23, 12, 148), // Couleur du texte
                  //   fontSize: 16, // Taille du texte
                  // ),
                  style: GoogleFonts.poppins(
                    fontSize: size * 0.030,
                    color: Color.fromARGB(255, 23, 12, 148),
                  ),
                ),
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
                  await _authenticationController.login(
                    telephone: _telephoneController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
                },
                child: Obx(() {
                  return _authenticationController.isLoading.value
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text('Se connecter',
                          style: GoogleFonts.poppins(
                              fontSize: size * 0.035, color: Colors.white));
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => RegisterPage());
                },
                child: Text(
                  'Vous n\'avez pas de compte ? Inscrivez-vous',
                  style: GoogleFonts.poppins(
                    fontSize: size * 0.030,
                    color: Color.fromARGB(255, 23, 12, 148),
                  ),
                ),
              ),
              SizedBox(height: 10),

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
