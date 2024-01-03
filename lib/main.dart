import 'package:flutter/material.dart';
import 'package:tontinefront/pages/pageapresconnexion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tontine',
      debugShowCheckedModeBanner: false,
      home: ApresCon(),
    );
  }
}
