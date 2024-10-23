import 'package:flutter/material.dart';
import 'package:property/components/investment_card.dart';
import 'package:property/data/property_data.dart';

class InvestmentsScreen extends StatelessWidget {
  const InvestmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Barra de Pesquisa
          TextField(
            decoration: InputDecoration(
              hintText: 'Pesquise por palavras-chave',
              prefixIcon: const Icon(
                Icons.search,
              ), // Ícone dourado
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    // Borda dourada
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Lista de Investimentos
          Expanded(
              child: ListView.builder(
            itemCount: apartaments.length,
            itemBuilder: (context, index) {
              return InvestmentCard(
                imageUrl: apartaments[index]['imageUrl'],
                title: apartaments[index]['title'],
                price: apartaments[index]['price'],
                details: apartaments[index]['details'],
              );
            },
          )),
        ],
      ),
    );
  }
}
