import 'package:flutter/material.dart';

class InvestmentCard extends StatelessWidget {
  String imageUrl;
  String title;
  String price;
  String details;

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
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                ListTile(
                  title: Text(
                    price,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Column(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.green,),
                      Text('30%'),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.bed),
                        Text('2 Quartos'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.bathroom),
                        Text('1 Banheiro'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.car_crash),
                        Text('1 Vaga'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
