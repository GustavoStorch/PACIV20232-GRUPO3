// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_compartilhados/componentes/botoes/buttom_started_widget.dart';
import 'register_login_page.dart';

class StartedSecondPage extends StatefulWidget {
  const StartedSecondPage({Key? key}) : super(key: key);

  @override
  _StartedSecondPageState createState() => _StartedSecondPageState();
}

class _StartedSecondPageState extends State<StartedSecondPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'S.H.A.',
                style: Fontes.getMontserrat(
                    fontSize: 40, cor: Cores.corTextoBranco),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Spacer(),
          Text(
            'Para Auxiliar no dia a dia',
            style: Fontes.getMontserrat(fontSize: 25, cor: Cores.corTextoRoxo),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            'Para te ajudar com as suas tarefas diárias e\nmelhorar na sua organização e controle de\ntarefas',
            style:
                Fontes.getMontserrat(fontSize: 14, cor: Cores.corTextoBranco),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          ButtomStarted(
            text: 'Vamos Lá',
            corFundo: Cores.corBotaoRoxo,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterLoginPage()),
              );
            },
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30.0)),
        ],
      ),
    );
  }
}
