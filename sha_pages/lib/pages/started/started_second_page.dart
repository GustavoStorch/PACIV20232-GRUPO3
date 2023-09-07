// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class StartedSecondPage extends StatefulWidget {
  const StartedSecondPage({super.key});

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'S.H.A',
            style: Fontes.getMontserrat(fontSize: 40, cor: Cores.corTextoBranco),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Para Auxiliar no dia a dia',
            style: Fontes.getMontserrat(fontSize: 24, cor: Cores.corTextoRoxo),
          ),
          Text(
            'Para te ajudar com as suas tarefas diárias e\nmelhorar na sua organização e controle de\ntarefas',
            style: Fontes.getMontserrat(fontSize: 14, cor: Cores.corTextoBranco),
          ),
        ],
      ),
    );
  }
}