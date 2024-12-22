import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'pemesanan_meja_page.dart';
import 'profil_page.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('King Restoran'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilPage()),
              );
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          MenuCategory(
            title: "Makanan",
            icon: Icons.fastfood,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(category: "Makanan"),
                ),
              );
            },
          ),
          MenuCategory(
            title: "Minuman",
            icon: Icons.local_drink,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(category: "Minuman"),
                ),
              );
            },
          ),
          MenuCategory(
            title: "Promo",
            icon: Icons.local_offer,
            onTap: () {
              // Tambahkan navigasi ke halaman promo
            },
          ),
          MenuCategory(
            title: "Pemesanan Meja",
            icon: Icons.table_bar,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PemesananMejaPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuCategory extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuCategory({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50, color: Colors.green),
            Text(title, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
