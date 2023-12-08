// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_pages/pages/historico/historico_page.dart';
import 'package:sha_pages/pages/home_page/home_page.dart';
import 'package:sha_pages/pages/list_page/list_home_page.dart';
import 'package:sha_pages/pages/list_page/list_page.dart';
import 'package:sha_pages/pages/musica/music_page.dart';
import 'package:sha_pages/pages/profile/profile_page.dart';

class HomePageInitial extends StatefulWidget {
  const HomePageInitial({super.key});

  @override
  State<HomePageInitial> createState() => _HomePageInitialState();
}

class _HomePageInitialState extends State<HomePageInitial> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MusicPage(),
    ListHomePage(),
    HistoricoPage(),
    ProfilePage(),
  ];

  final Map<int, String> titles = {
    0: 'Home',
    1: 'Listas',
    2: 'Adicionar Lista',
    3: 'Histórico',
    4: 'Perfil',
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  IconButton _buildAdicionarListaIconButton() {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ListaPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Cores.corTextPreto,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Image.asset('assets/lupa.ico', width: 24, height: 24),
          onPressed: () {},
        ),
        title: Text(titles[_selectedIndex] ?? ''),
        centerTitle: true,
        actions: [
          _selectedIndex == 2
              ? _buildAdicionarListaIconButton()
              : IconButton(
                  icon: Image.asset('assets/conf.ico', width: 24, height: 24),
                  onPressed: () {},
                ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.ico', width: 24, height: 24),
            label: 'Home',
            backgroundColor: Cores.corNavBarInferior,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/lista.ico', width: 24, height: 24),
            label: 'Listas',
            backgroundColor: Cores.corNavBarInferior,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/sha.ico', width: 24, height: 24),
            label: 'Adicionar Lista',
            backgroundColor: Cores.corNavBarInferior,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/historico.ico', width: 24, height: 24),
            label: 'Histórico',
            backgroundColor: Cores.corNavBarInferior,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/perfil.ico', width: 24, height: 24),
            label: 'Perfil',
            backgroundColor: Cores.corNavBarInferior,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Cores.corTextoBranco,
        selectedLabelStyle: Fontes.getMontserrat(),
        onTap: _onItemTapped,
      ),
    );
  }
}
