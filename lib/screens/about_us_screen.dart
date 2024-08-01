import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Kami',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            SizedBox(height: 16),
            _buildSection(
              icon: Icons.info,
              title: 'Ensiklofauna adalah aplikasi mobile yang memberikan pemahaman mendalam tentang berbagai jenis hewan di seluruh dunia. Aplikasi ini menyediakan deskripsi lengkap tentang habitat, kebiasaan makan, siklus hidup, dan karakteristik unik dari setiap spesies hewan. Pengguna dapat menemukan informasi melalui artikel, gambar, dan video yang tersedia dalam aplikasi ini.',
            ),
            SizedBox(height: 16),
            Text(
              'Visi Kami',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 8),
            _buildSection(
              icon: Icons.visibility,
              title: 'Menjadi sumber informasi terpercaya dan edukatif tentang dunia hewan bagi semua kalangan.',
            ),
            SizedBox(height: 16),
            Text(
              'Tim Kami',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            SizedBox(height: 8),
            _buildSection(
              icon: Icons.group,
              title: 'Tim Ensiklofauna terdiri dari mahasiswa sistem informasi yang berdedikasi untuk menyediakan konten berkualitas tinggi dan membantu pengguna dalam mempelajari dunia hewan.',
            ),
            SizedBox(height: 16),
            Text(
              'Kontak Kami',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            _buildSection(
              icon: Icons.contact_mail,
              title: 'Jika Anda memiliki pertanyaan atau masukan, jangan ragu untuk menghubungi kami di contact@ensiklofauna.com.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required IconData icon, required String title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 28, color: Colors.blueGrey),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
