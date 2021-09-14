import 'package:curriculo/modules/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formule seu currículo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(
              cep: '',
              cidade: '',
              desc: '',
              email: '',
              linkedin: '',
              nome: '',
              tel: '',
            ),
        // "/next": (context) => NextPage(),
        // "/curriculo": (context) => CurriculoPage(),
      },
    );
  }
}
