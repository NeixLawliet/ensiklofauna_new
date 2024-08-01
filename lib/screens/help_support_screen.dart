import 'package:flutter/material.dart';

class BantuanDukunganScreen extends StatelessWidget {
  const BantuanDukunganScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan & Dukungan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pertanyaan yang Sering Diajukan (FAQ)', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            Text(
              'Temukan jawaban dari pertanyaan yang paling sering diajukan.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text('Hubungi Kami', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            Text(
              'Jika kamu butuh bantuan lebih lanjut, silakan hubungi tim dukungan kami.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Hubungi dukungan
              },
              child: Text('Hubungi Dukungan'),
            ),
          ],
        ),
      ),
    );
  }
}
