import 'package:flutter/material.dart';
import 'account_settings_screen.dart';
import 'notification_settings_screen.dart';
import 'privacy_settings_screen.dart';
import 'help_support_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SettingsOption(
            icon: Icons.account_circle,
            title: 'Akun',
            subtitle: 'Kelola pengaturan akun kamu',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PengaturanAkunScreen()),
              );
            },
          ),
          SettingsOption(
            icon: Icons.notifications,
            title: 'Notifikasi',
            subtitle: 'Kelola pengaturan notifikasi kamu',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PengaturanNotifikasiScreen()),
              );
            },
          ),
          SettingsOption(
            icon: Icons.lock,
            title: 'Privasi',
            subtitle: 'Kelola pengaturan privasi kamu',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PengaturanPrivasiScreen()),
              );
            },
          ),
          SettingsOption(
            icon: Icons.help,
            title: 'Bantuan & Dukungan',
            subtitle: 'Dapatkan bantuan dan dukungan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BantuanDukunganScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SettingsOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const SettingsOption({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          leading: Icon(icon, size: 40.0),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
