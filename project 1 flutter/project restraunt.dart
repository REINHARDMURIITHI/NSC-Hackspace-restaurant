import 'package:flutter/material.dart';
import '../widgets/menu_item.dart';

class MenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'name': 'Burger', 'price': 5.9},
    {'name': 'Pizza', 'price': 9.5},
    {'name': 'Pasta', 'price': 7.5},
    {'name': 'Salad', 'price': 2.5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NSC Hackspace Restaurant'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return MenuItem(
            name: menuItems[index]['name'],
            price: menuItems[index]['price'],
            onTap: () {
              // Handle item tap (e.g., add to cart)
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/order');
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}