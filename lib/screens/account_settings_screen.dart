import 'package:flutter/material.dart';

class PengaturanAkunScreen extends StatelessWidget {
  const PengaturanAkunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Perbarui Profil', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Simpan pembaruan profil
              },
              child: Text('Simpan'),
            ),
            SizedBox(height: 20),
            Text('Ubah Kata Sandi', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kata Sandi Saat Ini',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kata Sandi Baru',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Konfirmasi Kata Sandi Baru',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Ubah kata sandi
              },
              child: Text('Ubah Kata Sandi'),
            ),
          ],
        ),
      ),
    );
  }
}
