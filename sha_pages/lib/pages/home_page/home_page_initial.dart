import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_pages/pages/home_page/home_page.dart';

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
    Text(
      'Index 1: Listas',
      style: optionStyle,
    ),
    Text(
      'Index 2: teste',
      style: optionStyle,
    ),
    Text(
      'Index 3: Histórico',
      style: optionStyle,
    ),
    Text(
      'Index 4: Perfil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        actions: [
          IconButton(
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
            label: 'teste',
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
