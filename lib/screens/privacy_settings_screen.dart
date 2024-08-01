import 'package:flutter/material.dart';

class PengaturanPrivasiScreen extends StatelessWidget {
  const PengaturanPrivasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan Privasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kebijakan Privasi', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            Text(
              'Privasi kamu sangat penting bagi kami. Bacalah kebijakan privasi kami untuk memahami bagaimana kami mengelola data kamu.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text('Kelola Data', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Kelola data
              },
              child: Text('Kelola Data'),
            ),
            SizedBox(height: 20),
            Text('Hapus Akun', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Hapus akun
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text('Hapus Akun'),
            ),
          ],
        ),
      ),
    );
  }
}
