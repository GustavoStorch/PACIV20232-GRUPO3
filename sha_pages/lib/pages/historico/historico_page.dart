// ignore_for_file: library_private_types_in_public_api, unused_local_variable, depend_on_referenced_packages, avoid_print
import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sha_models/models/lista/lista_model.dart';
import 'package:sha_models/models/lista_item/lista_item_model.dart';
import 'package:sha_pages/pages/list_page/list_check_page.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  late List<ListaModel> listas;
  @override
  void initState() {
    listas = [];
    _carregarListasDoFirebase();
    super.initState();
  }

  Future<void> _carregarListasDoFirebase() async {
    setState(() {
      listas.clear();
    });

    try {
      CollectionReference listasCollection =
          FirebaseFirestore.instance.collection('listas');

      QuerySnapshot<Map<String, dynamic>> listasQuerySnapshot =
          await listasCollection.get() as QuerySnapshot<Map<String, dynamic>>;

      for (DocumentSnapshot<Map<String, dynamic>> doc
          in listasQuerySnapshot.docs) {
        Map<String, dynamic> data = doc.data()!;
        List<ListaItemModel> itens = [];

        if (data['itens'] is List) {
          for (var item in data['itens'] as List) {
            if (item is Map<String, dynamic>) {
              itens.add(ListaItemModel.fromJson(item));
            } else if (item is String) {
              itens.add(ListaItemModel(nomeItem: item, checkItem: false));
            }
          }
        }

        listas.add(
          ListaModel(
            cod: doc.id,
            dataHora: DateTime.now(),
            nome: data['nome'] ?? '',
            itens: itens,
            textAux: itens.map((item) => item.nomeItem).join(', '),
          ),
        );
      }

      setState(() {});
    } catch (e) {
      print('Erro ao carregar listas: $e');
    }
  }

  String _getGroupTitle(DateTime date) {
    DateTime currentDate = DateTime.now();
    DateTime yesterday = currentDate.subtract(const Duration(days: 1));

    if (date.year == currentDate.year &&
        date.month == currentDate.month &&
        date.day == currentDate.day) {
      return 'Hoje';
    } else if (date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day) {
      return 'Ontem';
    } else {
      return 'Antigas';
    }
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: ListView.builder(
        itemCount: listas.length,
        itemBuilder: (context, index) {
          final item = listas[index];
          String groupTitle = _getGroupTitle(item.dataHora!);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index == 0 ||
                  _getGroupTitle(listas[index - 1].dataHora!) != groupTitle)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    groupTitle,
                    style: const TextStyle(
                      color: Cores.corTextoBranco,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ListTile(
                title: Text(
                  item.nome!,
                  style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
                ),
                subtitle: Text(
                  item.textAux!,
                  style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListCheckPage(lista: item),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
