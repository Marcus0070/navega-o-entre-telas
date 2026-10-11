
import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade50,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 65,
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.person,
              size: 80,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Meu Perfil',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Nome: Usuário Flutter',
            style: TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 8),

          const Text(
            'Estudante e desenvolvedor',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}