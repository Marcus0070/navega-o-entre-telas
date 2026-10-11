
import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade50,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Icon(
              Icons.waving_hand,
              size: 60,
              color: Colors.green,
            ),

            const SizedBox(height: 15),

            const Text(
              'Bem-vindo ao aplicativo!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            const Text(
              'Aqui você encontra novidades e '
                  'informações sobre o seu dia.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            Image.network(
              'https://picsum.photos/id/1018/600/350',
              width: 320,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.image_not_supported,
                  size: 100,
                );
              },
            ),

            const SizedBox(height: 20),

            const Text(
              'Explore as outras abas!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}