import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pelanggan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Nama: John Doe', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Email: john.doe@example.com', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Nomor Telepon: 081234567890', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
