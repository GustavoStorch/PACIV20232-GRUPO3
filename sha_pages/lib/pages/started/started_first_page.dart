// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_pages/pages/started/started_second_page.dart';

class StartedFirstPage extends StatefulWidget {
  const StartedFirstPage({super.key});

  @override
  _StartedFirstPageState createState() => _StartedFirstPageState();
}

class _StartedFirstPageState extends State<StartedFirstPage> {
  
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => const StartedSecondPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: Center(
        child: Text(
          'Smart\nHome\nAssistent',
          style: Fontes.getMontserrat(fontSize: 40, cor: Cores.corTextoStartPage),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}