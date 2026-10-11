
import 'package:flutter/material.dart';

class TelaNoticias extends StatelessWidget {
  const TelaNoticias({super.key});

  final List<String> noticias = const [
    'Nova tecnologia facilita o dia a dia',
    'Estudantes desenvolvem projeto inovador',
    'Aplicativos ficam cada vez mais populares',
    'Cidade anuncia melhorias na educação',
    'Equipe conquista importante vitória',
    'Sustentabilidade ganha destaque nas escolas',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      child: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(noticias[index]),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}