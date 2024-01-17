import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validateAndSubmit() {
    if (formKey.currentState!.validate()) {
      String code = codeController.text;
      String password = passwordController.text;
      String confirm = confirmController.text;

      // Simuler un appel réseau avec Future.delayed
      Future.delayed(Duration(seconds: 2), () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Votre mot de passe a été modifié avec succès'),
            duration: Duration(seconds: 2),
          ),
        );
      });
    }
  }

  void sendResetCodeBySMS() {
    // Simuler l'envoi d'un code de réinitialisation par SMS
    // Ici, vous pouvez intégrer une solution d'envoi de SMS réelle
    print('Code de réinitialisation envoyé par SMS');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mot de passe'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  sendResetCodeBySMS(); // Appeler la fonction pour envoyer le code par SMS
                },
                child: Text(
                  'Mot de passe oublié',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: codeController,
                  decoration: InputDecoration(
                    labelText: 'Code reçu',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer le code reçu';
                    }
                    if (value.length != 6 || int.tryParse(value) == null) {
                      return 'Veuillez entrer un code valide';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Nouveau mot de passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer un nouveau mot de passe';
                    }
                    if (value.length < 8) {
                      return 'Veuillez entrer un mot de passe plus long';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: confirmController,
                  decoration: InputDecoration(
                    labelText: 'Confirmer le mot de passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez confirmer le mot de passe';
                    }
                    if (value != passwordController.text) {
                      return 'Les mots de passe ne correspondent pas';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: validateAndSubmit,
                child: Text(
                  'Valider',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
