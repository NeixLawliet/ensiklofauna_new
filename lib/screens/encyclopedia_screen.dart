import 'package:flutter/material.dart';

class EncyclopediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Ensiklopedia Hewan',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ensiklopedia Hewan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildListTile(context, 'Mamalia', MamaliaScreen()),
                  _buildListTile(context, 'Burung', BurungScreen()),
                  _buildListTile(context, 'Reptil', ReptilScreen()),
                  _buildListTile(context, 'Amfibi', AmfibiScreen()),
                  _buildListTile(context, 'Ikan', IkanScreen()),
                  _buildListTile(context, 'Invertebrata', InvertebrataScreen()),
                  _buildListTile(context, 'Karnivora', KarnivoraScreen()),
                  _buildListTile(context, 'Herbivora', HerbivoraScreen()),
                  _buildListTile(context, 'Omnivora', OmnivoraScreen()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, Widget screen) {
    return Card(
      color: Color(0xFFC5EBAA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.black)),
        trailing: Icon(Icons.arrow_forward, color: Colors.black),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}

class MamaliaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Mamalia',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Mamalia adalah kelompok hewan yang memiliki kelenjar susu yang menghasilkan susu untuk memberi makan anak-anaknya. '
          'Contoh mamalia termasuk manusia, gajah, dan lumba-lumba.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class BurungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Burung',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Burung adalah kelompok hewan yang memiliki sayap dan bulu. Mereka umumnya bisa terbang, meskipun ada beberapa pengecualian seperti burung unta. '
          'Contoh burung termasuk elang, burung pipit, dan penguin.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class ReptilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Reptil',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Reptil adalah kelompok hewan yang berdarah dingin dan memiliki kulit bersisik. '
          'Contoh reptil termasuk ular, kadal, dan buaya.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class AmfibiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Amfibi',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Amfibi adalah kelompok hewan yang dapat hidup di air dan di darat. Mereka biasanya mengalami metamorfosis dari tahap larva ke tahap dewasa. '
          'Contoh amfibi termasuk katak, salamander, dan axolotl.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class IkanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Ikan',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Ikan adalah kelompok hewan yang hidup di air dan bernafas dengan insang. '
          'Contoh ikan termasuk ikan hiu, ikan pari, dan ikan mas.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class InvertebrataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Invertebrata',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Invertebrata adalah kelompok hewan yang tidak memiliki tulang belakang. '
          'Contoh invertebrata termasuk serangga, laba-laba, dan ubur-ubur.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class KarnivoraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Karnivora',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Karnivora adalah hewan yang memakan daging. Mereka seringkali memiliki gigi tajam dan cakar untuk menangkap dan memakan mangsanya. '
          'Contoh karnivora termasuk singa, serigala, dan elang.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class HerbivoraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Herbivora',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Herbivora adalah hewan yang memakan tumbuhan. Mereka seringkali memiliki gigi datar untuk mengunyah daun dan rumput. '
          'Contoh herbivora termasuk gajah, rusa, dan kelinci.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class OmnivoraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFC5EBAA),
        title: Text(
          'Omnivora',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Omnivora adalah hewan yang memakan baik daging maupun tumbuhan. Mereka memiliki gigi yang beragam untuk berbagai jenis makanan. '
          'Contoh omnivora termasuk beruang, babi, dan manusia.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
