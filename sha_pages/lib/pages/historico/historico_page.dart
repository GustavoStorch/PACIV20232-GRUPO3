// ignore_for_file: library_private_types_in_public_api, unused_local_variable
import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class ListItem {
  final String nome;
  //final String imagem;
  final String texto;

  ListItem({
    required this.nome,
    //required this.imagem,
    required this.texto,
  });
}

class _HistoricoPageState extends State<HistoricoPage> {
  final List<ListItem> items = [];
  @override
  void initState() {
    super.initState();
    items.add(
      ListItem(
        nome: "Feliz",
        //imagem: 'assets/feliz.png',
        texto: "Feromonas",
      ),
    );
    items.add(
      ListItem(
        nome: "Festas",
        //imagem: 'assets/feliz.png',
        texto: "Hanna Monatana",
      ),
    );
    items.add(
      ListItem(
        nome: "Musicas",
        //imagem: 'assets/feliz.png',
        texto: "Anaconda",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15),
                child: Text(
                  'Hoje',
                  style: Fontes.getMontserrat(
                    fontSize: 24,
                    cor: Cores.corTextoBranco,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    //leading: Image.asset(item.imagem),
                    title: Text(
                      item.nome,
                      style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
                    ),
                    subtitle: Text(
                      item.texto,
                      style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
                    ),
                  );
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15),
                child: Text(
                  'Ontem',
                  style: Fontes.getMontserrat(
                    fontSize: 24,
                    cor: Cores.corTextoBranco,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    //leading: Image.asset(item.imagem),
                    title: Text(
                      item.nome,
                      style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
                    ),
                    subtitle: Text(
                      item.texto,
                      style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
