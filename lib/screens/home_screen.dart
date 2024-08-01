import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Stack(
        children: [
          // Latar belakang dengan foto
          Positioned.fill(
            child: Opacity(
              opacity: 0.5, // Mengatur transparansi latar belakang
              child: Image.asset(
                'assets/img/background.png', // Pastikan path ini benar
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Konten utama dengan bingkai
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Transparansi pada bingkai
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Selamat Datang di Ensiklofauna!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Aplikasi ini membantu Anda mempelajari berbagai jenis hewan di seluruh dunia. Temukan informasi menarik tentang habitat, kebiasaan makan, dan siklus hidup hewan-hewan favorit Anda.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
