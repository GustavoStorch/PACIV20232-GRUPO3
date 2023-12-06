// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/componentes/botoes/save_buttom_widget.dart';
import 'package:sha_compartilhados/componentes/toasts/toast_utils.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_models/models/lista/lista_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
                final item = widget.lista.itens![index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: Text(
                    item.nomeItem!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  leading: Checkbox(
                    value: item.checkItem ?? false,
                    onChanged: (value) {
                      setState(() {
                        item.checkItem = value;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, bottom: 10),
            child: SaveButtomWidget(
              text: 'Salvar',
              corFundo: Cores.corBotaoSalvar,
              onPressed: () => salvarAlteracoes(),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> salvarAlteracoes() async {
    if (widget.lista.cod != null) {
      widget.lista.dataHora = DateTime.now();

      DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await FirebaseFirestore.instance
              .collection('listas')
              .doc(widget.lista.cod)
              .get();

      if (documentSnapshot.exists) {
        FirebaseFirestore.instance
            .collection('listas')
            .doc(widget.lista.cod)
            .update({
          'dataHora': DateTime.now(),
          'nome': widget.lista.nome,
          'itens': widget.lista.itens
              ?.map((item) => {
                    'nomeItem': item.nomeItem,
                    'checkItem': item.checkItem,
                  })
              .toList(),
        });

        Navigator.of(context).pop((false, ''));

        ToastUtils.showCustomToastSucess(
            context, 'Alterações salvas com sucesso!');
      } else {
        ToastUtils.showCustomToastWarning(
            context, 'Registro não Encontrado: ${widget.lista.cod}');
      }
    } else {
      ToastUtils.showCustomToastWarning(context, 'Registro Nulo!');
    }
  }
}
