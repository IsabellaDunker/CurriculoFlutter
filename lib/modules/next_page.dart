import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curriculo/widgets/next_button.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'curriculo_page.dart';

// ignore: must_be_immutable
class NextPage extends StatefulWidget {
  String nome;
  String email;
  String tel;
  String cep;
  String cidade;
  String linkedin;
  String desc;

  NextPage({
    Key? key,
    required this.nome,
    required this.email,
    required this.tel,
    required this.cep,
    required this.cidade,
    required this.linkedin,
    required this.desc,
  }) : super(key: key);
  @override
  _NextPageState createState() =>
      _NextPageState(nome, email, tel, cep, cidade, linkedin, desc);
}

class _NextPageState extends State<NextPage> {
  String nome;
  String email;
  String tel;
  String cep;
  String cidade;
  String linkedin;
  String desc;
  String curso = '';
  String escola = '';
  String dataInicioF = '';
  String dataTerminoF = '';
  String cargo = '';
  String empregador = '';
  String dataInicioE = '';
  String dataTerminoE = '';
  String projeto = '';
  String descP = '';

  _NextPageState(this.nome, this.email, this.tel, this.cep, this.cidade,
      this.linkedin, this.desc);

  final dataInicioFController = MaskedTextController(mask: "00/00/0000");
  final dataTerminoFController = MaskedTextController(mask: "00/00/0000");
  final dataInicioEController = MaskedTextController(mask: "00/00/0000");
  final dataTerminoEController = MaskedTextController(mask: "00/00/0000");

  String? validator(String? value) =>
      value?.isEmpty ?? true ? "Não pode ser vazio" : null;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
        itemCount: 1,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Scaffold(
            appBar: AppBar(
              title: Text("As minhas experiências"),
              backgroundColor: Colors.green[400],
            ),
            body: Column(
              children: [
                Center(
                  child: Container(
                    height: 900,
                    width: 700,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Icon(Icons.apps),
                              Text(
                                "Formações",
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Curso",
                                ),
                                onSaved: (value) {
                                  curso = value!;
                                },
                              ),
                              TextFormField(
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Escola",
                                ),
                                onSaved: (value) {
                                  escola = value!;
                                },
                              ),
                              TextFormField(
                                controller: dataInicioFController,
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Data de início",
                                ),
                                onSaved: (value) {
                                  dataInicioF = value!;
                                },
                              ),
                              TextFormField(
                                controller: dataTerminoFController,
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Data de término",
                                ),
                                onSaved: (value) {
                                  dataTerminoF = value!;
                                },
                              ),
                              SizedBox(height: 40),
                              Icon(Icons.work),
                              Text(
                                "Experiências profissionais",
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Cargo",
                                ),
                                onSaved: (value) {
                                  cargo = value!;
                                },
                              ),
                              TextFormField(
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Empregador",
                                ),
                                onSaved: (value) {
                                  empregador = value!;
                                },
                              ),
                              TextFormField(
                                controller: dataInicioEController,
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Data de início",
                                ),
                                onSaved: (value) {
                                  dataInicioE = value!;
                                },
                              ),
                              TextFormField(
                                controller: dataTerminoEController,
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Data de término",
                                ),
                                onSaved: (value) {
                                  dataTerminoE = value!;
                                },
                              ),
                              SizedBox(height: 40),
                              Icon(Icons.apps),
                              Text(
                                "Projetos",
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Nome do Projeto",
                                ),
                                onSaved: (value) {
                                  projeto = value!;
                                },
                              ),
                              TextFormField(
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "Descrição",
                                ),
                                onSaved: (value) {
                                  descP = value!;
                                },
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                NextButton(onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CurriculoPage(
                              nome: nome,
                              cep: cep,
                              cidade: cidade,
                              desc: desc,
                              email: email,
                              linkedin: linkedin,
                              tel: tel,
                              cargo: cargo,
                              curso: curso,
                              dataInicioE: dataInicioE,
                              dataInicioF: dataInicioF,
                              dataTerminoE: dataTerminoE,
                              dataTerminoF: dataTerminoF,
                              empregador: empregador,
                              escola: escola,
                              descP: descP,
                              projeto: projeto,
                            )));
                  }
                })
              ],
            ),
          );
        },
      ),
    );
  }
}
