import 'package:flutter/material.dart';

class PemesananMejaPage extends StatelessWidget {
  const PemesananMejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> mejaTersedia = [1, 2, 3, 4, 5]; // Contoh data meja yang tersedia

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Meja'),
      ),
      body: ListView.builder(
        itemCount: mejaTersedia.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Meja ${mejaTersedia[index]}'),
            trailing: IconButton(
              icon: const Icon(Icons.check_circle, color: Colors.green),
              onPressed: () {
                // Proses pemilihan meja
              },
            ),
          );
        },
      ),
    );
  }
}
