import 'package:flutter/material.dart';
import 'package:property/components/investment_card.dart';

class InvestmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Investimentos',
          style: TextStyle(
            color: Colors.white, // Texto branco para contraste
            fontWeight: FontWeight.bold,
            fontSize: 24, // Tamanho do título
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black, // Fundo preto
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Barra de Pesquisa
            TextField(
              decoration: InputDecoration(
                hintText: 'Pesquise por palavras-chave',
                prefixIcon: Icon(Icons.search, color: Colors.amber), // Ícone dourado
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.amber, // Borda dourada
                  ),
                ),
                filled: true,
                fillColor: Colors.black, // Fundo preto
                hintStyle: TextStyle(color: Colors.white70), // Texto de dica branco suave
              ),
              style: TextStyle(color: Colors.white), // Texto da pesquisa branco
            ),
            SizedBox(height: 20),

            // Lista de Investimentos
            Expanded(
              child: ListView(
                children: [
                  InvestmentCard(
                    imageUrl: 'https://th.bing.com/th/id/OIP.MbrYb50Kg_32Mttxw4qU8QHaEK?w=1000&h=563&rs=1&pid=ImgDetMain',
                    title: 'Skyview Residence 40',
                    price: 'R\$ 280.000',
                    details: 'Condo 2 Bed 1 Bath',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black, // Fundo preto
        selectedItemColor: Colors.amber, // Dourado para itens selecionados
        unselectedItemColor: Colors.white70, // Branco suave para itens não selecionados
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Clube',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_outlined),
            label: 'Investimentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Configurações',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
