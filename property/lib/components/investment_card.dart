import 'package:flutter/material.dart';

class InvestmentCard extends StatelessWidget {
  String imageUrl;
  String title;
  String price;
  List details;

  InvestmentCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  title: Text(
                    price,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Custava R\$ 500.000'),
                  trailing: const Column(
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                      ),
                      Text('30%'),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    details.length,
                    (index) {
                      return Row(
                        children: [
                          Icon(details[index]['type'] == "bedrooms"
                              ? Icons.bed
                              : details[index]['type'] == "bathrooms"
                                  ? Icons.bathroom
                                  : details[index]['type'] == "suites"
                                      ? Icons.bedroom_parent
                                      : Icons.car_repair),
                          Text('${details[index]['amount']} Banheiros')
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
