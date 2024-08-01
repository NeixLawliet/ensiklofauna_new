import 'package:flutter/material.dart';

class PengaturanNotifikasiScreen extends StatefulWidget {
  const PengaturanNotifikasiScreen({Key? key}) : super(key: key);

  @override
  _PengaturanNotifikasiScreenState createState() => _PengaturanNotifikasiScreenState();
}

class _PengaturanNotifikasiScreenState extends State<PengaturanNotifikasiScreen> {
  bool emailNotifikasi = true;
  bool pushNotifikasi = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan Notifikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: Text('Notifikasi Email'),
              value: emailNotifikasi,
              onChanged: (bool value) {
                setState(() {
                  emailNotifikasi = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Notifikasi Push'),
              value: pushNotifikasi,
              onChanged: (bool value) {
                setState(() {
                  pushNotifikasi = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
