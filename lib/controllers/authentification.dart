import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:tontinefront/constant.dart';
import 'package:tontinefront/login_page.dart';
import 'package:tontinefront/pages/pageapresconnexion.dart';
// import 'package:laraflutter/views/homepage.dart';
// import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class AuthenticationController extends GetxController {
  final isLoading = false.obs;
  final token = ''.obs;

  final box = GetStorage();

  Future<void> register({
    required String prenom,
    required String nom,
    required String telephone,
    required String password,
    required String password_confirmed,
  }) async {
    isLoading.value = true;

    var data = {
      'prenom': prenom,
      'nom': nom,
      'telephone': telephone,
      'password': password,
      'password_confirmed': password_confirmed,
    };

    try {
      var response = await http.post(
        Uri.parse('$url/register'),
        headers: {
          'Accept': 'application/json',
        },
        body: data,
      );

      if (response.statusCode == 201) {
        // Traitez la réponse ici
        Map<String, dynamic> responseData = json.decode(response.body);
        // debugPrint(json.encode(responseData)); // Vous pouvez imprimer la version encodée si nécessaire
        isLoading.value = false;
        debugPrint('Response Data: $responseData');
      } else {
        // Gérez la réponse en cas d'erreur
        Get.snackbar(
          'error',
          json.decode(response.body)['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        isLoading.value = false;
        debugPrint('Error Response: ${response.body}');
      }
    } catch (e) {
      // Gérez les erreurs liées à la requête HTTP ici
      isLoading.value = false;
      debugPrint('Error during registration: $e');
    }
  }

  // login---------------------
  Future<void> login({
    required String telephone,
    required String password,
  }) async {
    isLoading.value = true;

    var data = {
      'telephone': telephone,
      'password': password,
    };

    try {
      var response = await http.post(
        Uri.parse('$url/login'),
        headers: {
          'Accept': 'application/json',
        },
        body: data,
      );

      if (response.statusCode == 200) {
        // Traitez la réponse ici
        Map<String, dynamic> responseData = json.decode(response.body);
        // debugPrint(json.encode(responseData)); // Vous pouvez imprimer la version encodée si nécessaire
        isLoading.value = false;
        token.value = json.decode(response.body)['token'];
        box.write('token', token.value);
        Get.offAll(() => const ApresCon());
        debugPrint('Response Data: $responseData');
      } else {
        // Gérez la réponse en cas d'erreur
        Get.snackbar(
          'error',
          json.decode(response.body)['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        isLoading.value = false;
        debugPrint('Error Response: ${response.body}');
      }
    } catch (e) {
      // Gérez les erreurs liées à la requête HTTP ici
      isLoading.value = false;
      debugPrint('Error during registration: $e');
    }
  }

  Future<void> deconnexion() async {
    isLoading.value = true;

    try {
      // Récupérez le jeton depuis la boîte de stockage
      String? accessToken = box.read('token');

      // Vérifiez si le jeton est présent
      if (accessToken != null && accessToken.isNotEmpty) {
        final response = await http.post(
          Uri.parse('$url/logout'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $accessToken',
          },
        );

        if (response.statusCode == 200) {
          // Déconnexion réussie, traitez la réponse ici si nécessaire
          print('Déconnexion réussie');
        } else if (response.statusCode == 401) {
          // Utilisateur non authentifié, traitez la réponse ici si nécessaire
          Get.snackbar(
            'Erreur',
            json.decode(response.body)['message'],
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
          print('Utilisateur non authentifié');
        } else {
          // Gestion des autres codes d'état
          print('Erreur lors de la déconnexion - ${response.statusCode}');
        }
      } else {
        // Gérer le cas où le jeton n'est pas disponible
        print('Erreur lors de la déconnexion - Jeton non disponible');
      }
    } catch (e) {
      // Gestion des erreurs
      print('Erreur lors de la déconnexion - $e');
    } finally {
      isLoading.value = false;
    }
  }

  // Future<void> deconnexion(String accessToken) async {
  //   isLoading.value = true;

  //   try {
  //     final response = await http.post(
  //       Uri.parse('$url/logout'),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //         'Authorization': 'Bearer $accessToken',
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       // Déconnexion réussie, traitez la réponse ici si nécessaire
  //       print('Déconnexion réussie');
  //     } else if (response.statusCode == 401) {
  //       // Utilisateur non authentifié, traitez la réponse ici si nécessaire
  //       Get.snackbar(
  //         'Erreur',
  //         json.decode(response.body)['message'],
  //         snackPosition: SnackPosition.TOP,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white,
  //       );
  //       print('Utilisateur non authentifié');
  //     } else {
  //       // Gestion des autres codes d'état
  //       print('Erreur lors de la déconnexion - ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     // Gestion des erreurs
  //     print('Erreur lors de la déconnexion - $e');
  //   }
  // }
  // Future<void> deconnexion(String accessToken) async {
  //   isLoading.value = true;

  // try {
  //   var response = await http.post(
  //     Uri.parse('$url/deconnexion'),
  //     headers: {
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer ${token.value}',
  //     },
  //     // body: data, // Si nécessaire, ajoutez le corps de la requête
  //   );

  //   if (response.statusCode == 200) {
  //     // Traitez la réponse ici si nécessaire
  //     isLoading.value = false;
  //     token.value = ''; // Supprimez le token localement
  //     box.remove('token'); // Supprimez le token du stockage local
  //     Get.offAll(() => const LoginPage());
  //     debugPrint('Déconnexion réussie');
  //   } else {
  //     // Gérez la réponse en cas d'erreur
  //     Get.snackbar(
  //       'Erreur',
  //       json.decode(response.body)['message'],
  //       snackPosition: SnackPosition.TOP,
  //       backgroundColor: Colors.red,
  //       colorText: Colors.white,
  //     );
  //     isLoading.value = false;
  //     debugPrint('Error Response: ${response.body}');
  //   }
  // } catch (e) {
  //   // Gérez les erreurs liées à la requête HTTP ici
  //   isLoading.value = false;
  //   debugPrint('Erreur pendant la déconnexion: $e');

  // }

  Future<void> logout(String accessToken) async {
    // try {
    //   final response = await http.post(
    //     Uri.parse('$url/logout'),
    //     headers: <String, String>{
    //       'Content-Type': 'application/json',
    //       'Accept': 'application/json',
    //       'Authorization': 'Bearer $accessToken',
    //     },
    //   );

    //   if (response.statusCode == 200) {
    //     // Déconnexion réussie, traitez la réponse ici si nécessaire
    //     print('Déconnexion réussie');
    //   } else if (response.statusCode == 401) {
    //     // Utilisateur non authentifié, traitez la réponse ici si nécessaire
    //     print('Utilisateur non authentifié');
    //   } else {
    //     // Gestion des autres codes d'état
    //     print('Erreur lors de la déconnexion - ${response.statusCode}');
    //   }
    // } catch (e) {
    //   // Gestion des erreurs
    //   print('Erreur lors de la déconnexion - $e');
    // }
  }

  fetchAccessToken() {}

  // void doUserLogout() async {
  //   final user = await ParseUser.currentUser() as ParseUser;
  //   var response = await user.logout();

  //   if (response.success) {
  //     showSuccess("User was successfully logout!");
  //     setState(() {
  //       isLoggedIn = false;
  //     });
  //   } else {
  //     showError(response.error!.message);
  //   }
  // }
  // /   void storeToken(String token) {
//     accessToken = token;
//     _authenticationController.login().then((token) {
//   _authenticationController.storeToken(token);

// });

// class TokenService {
//   String? _accessToken;

//   String? get accessToken => _accessToken;

//   setToken(String token) {
//     _accessToken = token;
//   }
// }
// // Assuming you have a method in AuthenticationController for login
// _authenticationController.login().then((token) {
//   tokenService.setToken(token);
// });
// String? token = tokenService.accessToken;
// if (token != null) {
//   // Use the token in your deconnexion method
//   _authenticationController.deconnexion(token);
// }

  // }

  // String accessToken = '';
}
