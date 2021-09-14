import 'package:curriculo/modules/next_page.dart';
import 'package:flutter/material.dart';
import 'package:curriculo/widgets/next_button.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String nome;
  String email;
  String tel;
  String cep;
  String cidade;
  String linkedin;
  String desc;

  HomePage({
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
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nome = '';
  String email = '';
  String tel = '';
  String cep = '';
  String cidade = '';
  String linkedin = '';
  String desc = '';

  final telController = MaskedTextController(mask: "(00) 0000-0000");

  String? validator(String? value) =>
      value?.isEmpty ?? true ? "Não pode ser vazio" : null;
  String? validatorEmail(String? value) =>
      value?.contains('@') ?? true ? null : "Email inválido";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(child: Text("Detalhes pessoais")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              height: 700,
              width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white70,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        validator: validator,
                        decoration: const InputDecoration(labelText: "Nome"),
                        onSaved: (value) {
                          nome = value!;
                        },
                      ),
                      TextFormField(
                        validator: validator,
                        decoration: const InputDecoration(labelText: "CEP"),
                        onSaved: (value) {
                          cep = value!;
                        },
                      ),
                      TextFormField(
                        validator: validator,
                        decoration: const InputDecoration(labelText: "Cidade"),
                        onSaved: (value) {
                          cidade = value!;
                        },
                      ),
                      TextFormField(
                        validator: validator,
                        controller: telController,
                        keyboardType: TextInputType.number,
                        decoration:
                            const InputDecoration(labelText: "Telefone"),
                        onSaved: (value) {
                          tel = value!;
                        },
                      ),
                      TextFormField(
                        validator: validatorEmail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(labelText: "Email"),
                        onSaved: (value) {
                          email = value!;
                        },
                      ),
                      TextFormField(
                        validator: validator,
                        decoration:
                            const InputDecoration(labelText: "Linkedin"),
                        onSaved: (value) {
                          linkedin = value!;
                        },
                      ),
                      TextFormField(
                        validator: validator,
                        decoration: const InputDecoration(
                            labelText: "Descrição profissional"),
                        onSaved: (value) {
                          desc = value!;
                        },
                      ),
                      SizedBox(height: 50),
                      NextButton(onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NextPage(
                                    nome: nome,
                                    cep: cep,
                                    cidade: cidade,
                                    desc: desc,
                                    email: email,
                                    linkedin: linkedin,
                                    tel: tel,
                                  )));
                        }
                      })
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
