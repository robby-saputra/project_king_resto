import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final String category;

  const MenuPage({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu $category'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.food_bank, color: Colors.green),
            title: Text('$category Item $index'),
            subtitle: const Text('Deskripsi singkat item'),
            trailing: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () {
                // Tambahkan item ke keranjang
              },
            ),
          );
        },
      ),
    );
  }
}
