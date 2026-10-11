
import 'package:flutter/material.dart';
import 'tela_inicio.dart';
import 'tela_noticias.dart';
import 'tela_perfil.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Aplicativo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int paginaAtual = 0;

  final List<Color> cores = [
    Colors.green,
    Colors.blue,
    Colors.deepPurple,
  ];

  final List<String> titulos = [
    'Início',
    'Notícias',
    'Perfil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulos[paginaAtual]),
        backgroundColor: cores[paginaAtual],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: IndexedStack(
        index: paginaAtual,
        children: const [
          TelaInicio(),
          TelaNoticias(),
          TelaPerfil(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        onTap: (index) {
          setState(() {
            paginaAtual = index;
          });
        },
        selectedItemColor: cores[paginaAtual],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Notícias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}