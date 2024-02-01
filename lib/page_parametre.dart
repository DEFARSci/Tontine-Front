import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tontinefront/controllers/authentification.dart';
import 'package:tontinefront/home_page.dart';

class PageParametre extends StatelessWidget {
  const PageParametre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthenticationController _authenticationController = Get.find();

    double largeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color.fromARGB(255, 207, 206, 233),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Container(
              width: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
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
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 23, 12, 148),
                  width: 2.0,
                ),
              ),
              child: Form(
                child: Column(
                  children: [
                    Container(
                      width: largeurEcran - 2 * 10,
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
                            'PARAMETRE',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      width: largeurEcran - 2 * 10,
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
                            'Mamadou Samba Barry ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      width: largeurEcran - 2 * 10,
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
                            '+(221) 77 021 19 79',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    
                    SizedBox(height: 16.0),
                    Container(
                      width: largeurEcran - 2 * 10,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Confirmation"),
                                content: Text(
                                  "Êtes-vous sûr de vouloir vous déconnecter ?",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Annuler"),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      // Appel de la méthode de déconnexion
                                      await _authenticationController
                                          .deconnexion();

                                      // Redirection vers la page d'accueil
                                      Get.offAll(() => HomePage());
                                    },
                                    child: Text("Déconnexion"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('Déconnexion'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 23, 12, 148),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
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



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tontinefront/controllers/authentification.dart';

// class PageParametre extends StatelessWidget {
//   const PageParametre({Key? key}) : super(key: key);

//   String get accesToken => '';

//   @override
//   Widget build(BuildContext context) {
//     // final AuthenticationController _authenticationController =
//     //     Get.put(AuthenticationController());
//     final AuthenticationController _authenticationController = Get.find();

//     double largeurEcran = MediaQuery.of(context).size.width;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//         backgroundColor: Color.fromARGB(255, 207, 206, 233),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 16.0),
//             // Nouveau conteneur avec titre centré et fond arrondi
//             Container(
//               width: 200,
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 23, 12, 148),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Center(
//                 child: Text(
//                   'Keule bi',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             // Formulaire avec un champ et un bouton
//             Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(
//                   color: Color.fromARGB(255, 23, 12, 148),
//                   width: 2.0,
//                 ),
//               ),
//               child: Form(
//                 child: Column(
//                   children: [
//                     // Utilisation de Container pour que le bouton ait la même largeur que l'Input
//                     Container(
//                       width: largeurEcran -
//                           2 * 10, // Largeur de l'écran moins les marges
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Ajouter la logique du bouton du formulaire
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 230, 231, 232),
//                           onPrimary: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           side: BorderSide(
//                             color: Color.fromARGB(255, 23, 12, 148),
//                             width: 2.0,
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(12.0),
//                           child: Text(
//                             'PARAMETRE',
//                             style: TextStyle(fontSize: 16, color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // 2ème input
//                     SizedBox(height: 16.0),
//                     Container(
//                       width: largeurEcran -
//                           2 * 10, // Largeur de l'écran moins les marges
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Ajouter la logique du bouton du formulaire
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 230, 231, 232),
//                           onPrimary: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           side: BorderSide(
//                             color: Color.fromARGB(255, 23, 12, 148),
//                             width: 2.0,
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(12.0),
//                           child: Text(
//                             'Mamadou Samba Barry ',
//                             style: TextStyle(fontSize: 16, color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // 3ème bouton
//                     SizedBox(height: 16.0),
//                     Container(
//                       width: largeurEcran -
//                           2 * 10, // Largeur de l'écran moins les marges
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Ajouter la logique du bouton du formulaire
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 230, 231, 232),
//                           onPrimary: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           side: BorderSide(
//                             color: Color.fromARGB(255, 23, 12, 148),
//                             width: 2.0,
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(12.0),
//                           child: Text(
//                             '+(221) 77 021 19 79',
//                             style: TextStyle(fontSize: 16, color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // Bouton Valider
//                     // SizedBox(height: 16.0),
//                     // Container(
//                     //   width: largeurEcran - 2 * 10,
//                     //   child: ElevatedButton(
//                     //     onPressed: () {
//                     //       _authenticationController.deconnexion(accessToken);
//                     //     },
//                     //     child: Text('Déconnexion'),
//                     //     style: ElevatedButton.styleFrom(
//                     //       primary: Color.fromARGB(255, 23, 12, 148),
//                     //       onPrimary: Colors.white,
//                     //       shape: RoundedRectangleBorder(
//                     //         borderRadius: BorderRadius.circular(10),
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                     // SizedBox(height: 16.0),
//                     Container(
//                       width: largeurEcran - 2 * 10,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Afficher une boîte de dialogue de confirmation
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 title: Text("Confirmation"),
//                                 content: Text(
//                                     "Êtes-vous sûr de vouloir vous déconnecter ?"),
//                                 actions: [
//                                   TextButton(
//                                     onPressed: () {
//                                       Navigator.of(context)
//                                           .pop(); // Fermer la boîte de dialogue
//                                     },
//                                     child: Text("Annuler"),
//                                   ),
//                                   TextButton(
//                                     onPressed: () {
//                                       _authenticationController
//                                           .deconnexion(accesToken);
//                                       Navigator.of(context)
//                                           .pop(); // Fermer la boîte de dialogue
//                                     },
//                                     child: Text("Déconnexion"),
//                                   ),
//                                 ],
//                               );
//                             },
//                           );
//                         },
//                         child: Text('Déconnexion'),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 23, 12, 148),
//                           onPrimary: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
