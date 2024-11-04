import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produk Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tombol Lihat Daftar Produk
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Warna tombol
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Kamu telah menekan tombol Lihat Daftar Produk"),
                  ),
                );
              },
              icon: const Icon(Icons.list),
              label: const Text('Lihat Daftar Produk'),
            ),
            const SizedBox(height: 20), // Spacer

            // Tombol Tambah Produk
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Warna tombol
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Kamu telah menekan tombol Tambah Produk"),
                  ),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text('Tambah Produk'),
            ),
            const SizedBox(height: 20), // Spacer

            // Tombol Logout
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna tombol
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Kamu telah menekan tombol Logout"),
                  ),
                );
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
