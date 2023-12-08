// ignore_for_file: library_private_types_in_public_api, unused_local_variable, depend_on_referenced_packages, avoid_print, use_build_context_synchronously, unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:sha_compartilhados/componentes/botoes/save_buttom_widget.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/componentes/toasts/toast_utils.dart';
import 'package:sha_compartilhados/componentes/campos/text_field_string_widget.dart';
import 'package:sha_models/models/lista/lista_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sha_models/models/lista_item/lista_item_model.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  late ListaModel lista;
  late String itemLista;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late final TextFieldtringWidget txtTitulo = TextFieldtringWidget(
    placeholder: 'Nome da Lista',
    onChanged: (String? str) {
      lista.nome = txtTitulo.text;
    },
  );

  late final TextFieldtringWidget txtItem = TextFieldtringWidget(
    placeholder: 'Item da lista',
    onChanged: (String? str) {
      itemLista = txtItem.text;
    },
  );

  List<ListaItemModel> itensLista = [];

  @override
  void initState() {
    lista = ListaModel.empty();
    itemLista = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Cores.corTextPreto,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Image.asset('assets/lupa.ico', width: 24, height: 24),
          onPressed: () {},
        ),
        title: const Text('Cadastro de Lista'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/conf.ico', width: 24, height: 24),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Cores.corPrincipal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: txtTitulo,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: txtItem,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SaveButtomWidget(
                    text: 'Adicionar',
                    corFundo: Cores.corBotaoAdicionar,
                    onPressed: () => adicionarItem(),
                  ),
                  SaveButtomWidget(
                    text: 'Salvar',
                    corFundo: Cores.corBotaoSalvar,
                    onPressed: () => salvarLista(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: itensLista.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      itensLista[index].nomeItem!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    trailing: IconButton(
                      icon:
                          const Icon(Icons.delete, color: Cores.corTextoBranco),
                      onPressed: () => excluirItem(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void excluirItem(int index) {
    setState(() {
      itensLista.removeAt(index);
    });
  }

  void adicionarItem() {
    (itensLista);
    setState(() {
      ListaItemModel novoItem = ListaItemModel.empty();
      if (novoItem != null) {
        novoItem.nomeItem = txtItem.text;
        novoItem.checkItem = false;
        itensLista.add(novoItem);
      }
    });
  }

  void salvarLista() async {
    if (lista.nome!.isNotEmpty) {
      List<Map<String, dynamic>> itensListaData = [];

      for (var item in itensLista) {
        itensListaData.add(item.toJson());
      }

      DocumentReference documentReference =
          await _firestore.collection('listas').add({
        'nome': lista.nome,
        'itens': itensListaData,
        'dataHora': DateTime.now(),
      });

      ToastUtils.showCustomToastSucess(
        context,
        'Salvo com sucesso',
      );

      Navigator.of(context).pop((false, ""));
    } else {
      ToastUtils.showCustomToastWarning(
        context,
        'A lista não possui itens!',
      );
    }
  }
}
