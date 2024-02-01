import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tontinefront/constant.dart';

class CreationController extends GetxController {
  final isLoading = false.obs;
  final token = ''.obs;

  final box = GetStorage();

  RxString nom = RxString('');
  RxString modaliteTontine = RxString('');

  Future<void> projets({
    required String nom,
    required String modalite,
  }) async {
    isLoading.value = true;

    var data = {
      'nom': nom, // Correction de la clé
      'modalite': modalite
    };

    try {
      var response = await http.post(
        Uri.parse('$url/projets'),
        headers: {
          'Accept': 'application/json',
        },
        body: data,
      );

      if (response.statusCode == 201) {
        // Traitez la réponse ici
        Map<String, dynamic> responseData = json.decode(response.body);
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
      debugPrint('Error during creation: $e');
    }
  }
}