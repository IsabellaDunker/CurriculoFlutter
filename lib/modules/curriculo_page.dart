import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurriculoPage extends StatefulWidget {
  String nome;
  String email;
  String tel;
  String cep;
  String cidade;
  String linkedin;
  String desc;
  String curso;
  String escola;
  String dataInicioF;
  String dataTerminoF;
  String cargo;
  String empregador;
  String dataInicioE;
  String dataTerminoE;
  String projeto;
  String descP;

  CurriculoPage({
    Key? key,
    required this.nome,
    required this.email,
    required this.tel,
    required this.cep,
    required this.cidade,
    required this.linkedin,
    required this.desc,
    required this.curso,
    required this.escola,
    required this.dataInicioF,
    required this.dataTerminoF,
    required this.cargo,
    required this.empregador,
    required this.dataInicioE,
    required this.dataTerminoE,
    required this.projeto,
    required this.descP,
  }) : super(key: key);
  @override
  _CurriculoPageState createState() => _CurriculoPageState(
        nome,
        email,
        tel,
        cep,
        cidade,
        linkedin,
        desc,
        curso,
        escola,
        dataInicioF,
        dataTerminoF,
        cargo,
        empregador,
        dataInicioE,
        dataTerminoE,
        projeto,
        descP,
      );
}

class _CurriculoPageState extends State<CurriculoPage> {
  String nome;
  String email;
  String tel;
  String cep;
  String cidade;
  String linkedin;
  String desc;
  String curso;
  String escola;
  String dataInicioF;
  String dataTerminoF;
  String cargo;
  String empregador;
  String dataInicioE;
  String dataTerminoE;
  String projeto;
  String descP;

  _CurriculoPageState(
    this.nome,
    this.email,
    this.tel,
    this.cep,
    this.cidade,
    this.linkedin,
    this.desc,
    this.curso,
    this.escola,
    this.dataInicioF,
    this.dataTerminoF,
    this.cargo,
    this.empregador,
    this.dataInicioE,
    this.dataTerminoE,
    this.projeto,
    this.descP,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              height: 1000,
              width: 800,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nome,
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("$cidade, $cep"),
                          Text(
                            "Linkedin:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(linkedin),
                          Text(
                            "Telefone:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(tel),
                          Text(
                            "Email:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(email),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Descrição",
                      style: TextStyle(fontSize: 23, color: Colors.blueAccent),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        desc,
                        style: TextStyle(fontSize: 15),
                        maxLines: 5,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Formação",
                            style: TextStyle(
                                fontSize: 23, color: Colors.blueAccent),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "$escola, ",
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                    text: curso, style: TextStyle(fontSize: 21))
                              ],
                            ),
                          ),
                          Text(
                            "$dataInicioF - $dataTerminoF",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Experiências",
                            style: TextStyle(
                                fontSize: 23, color: Colors.blueAccent),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "$empregador - ",
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                    text: cargo, style: TextStyle(fontSize: 21))
                              ],
                            ),
                          ),
                          Text(
                            "$dataInicioE - $dataTerminoE",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Projetos",
                            style: TextStyle(
                                fontSize: 23, color: Colors.blueAccent),
                          ),
                          Text(projeto,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              descP,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
