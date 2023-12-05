// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_models/models/lista/lista_model.dart';

class ListCheckPage extends StatefulWidget {
  final ListaModel lista;
  const ListCheckPage({Key? key, required this.lista}) : super(key: key);

  @override
  _ListCheckPageState createState() => _ListCheckPageState();
}

class _ListCheckPageState extends State<ListCheckPage> {
  late ListaModel lista;

  @override
  void initState() {
    lista = widget.lista;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      appBar: AppBar(
        title: const Text('Lista de Itens'),
        backgroundColor: Cores.corTextPreto,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text(
              'Nome: ${widget.lista.nome}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(
              'Itens:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.lista.itens?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: Text(
                    widget.lista.itens![index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  leading: Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
