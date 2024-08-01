import 'package:flutter/material.dart';

class RiwayatBelajarScreen extends StatelessWidget {
  RiwayatBelajarScreen({Key? key}) : super(key: key);

  final List<Animal> animals = [
    Animal(
      animalName: 'Panda',
      imageUrl: 'assets/img/pembelajaran/panda.png',
      description: 'Pelajari tentang habitat dan makanan panda.',
      content: 'Panda adalah mamalia yang berasal dari Tiongkok Tengah. Habitatnya terutama di pegunungan Sichuan dan Tibet. Panda dikenal karena bulunya yang hitam putih yang khas dan makanannya yang hampir seluruhnya terdiri dari bambu. Panda dewasa dapat mengonsumsi hingga 38 kg bambu per hari. Selain itu, panda juga kadang-kadang memakan buah-buahan, sayuran, dan daging kecil seperti burung atau tikus. Populasi panda terancam oleh hilangnya habitat dan pemburuan liar, tetapi upaya konservasi telah membantu meningkatkan jumlahnya di alam liar.',
      scientificName: 'Ailuropoda melanoleuca',
      originCountry: 'Tiongkok',
    ),
    Animal(
      animalName: 'Singa',
      imageUrl: 'assets/img/pembelajaran/singa.png',
      description: 'Jelajahi kehidupan singa di alam liar.',
      content: 'Singa adalah salah satu hewan predator paling ikonik di Afrika. Mereka hidup di padang rumput dan sabana, dan dikenal karena hidup dalam kelompok yang disebut kawanan. Kawanan singa biasanya terdiri dari satu atau dua jantan, beberapa betina, dan anak-anak mereka. Singa jantan memiliki surai yang khas, yang berfungsi sebagai tanda kekuatan dan dominasi. Singa betina bertanggung jawab atas sebagian besar perburuan, bekerja sama untuk menjatuhkan mangsa besar seperti zebra dan kerbau. Singa dapat tidur hingga 20 jam sehari untuk menghemat energi.',
      scientificName: 'Panthera leo',
      originCountry: 'Afrika',
    ),
    Animal(
      animalName: 'Gajah',
      imageUrl: 'assets/img/pembelajaran/gajah.png',
      description: 'Temukan fakta menarik tentang gajah.',
      content: 'Gajah adalah hewan darat terbesar yang hidup di berbagai habitat seperti hutan, padang rumput, dan sabana di Afrika dan Asia. Mereka memiliki telinga besar yang membantu mengatur suhu tubuh dan belalai panjang yang digunakan untuk berbagai tujuan, seperti makan, minum, dan berkomunikasi. Gajah dikenal karena kecerdasannya yang luar biasa, ingatan jangka panjang, dan kemampuan untuk menunjukkan emosi seperti kesedihan dan kegembiraan. Mereka hidup dalam kelompok matriarkal yang dipimpin oleh betina tertua. Gajah memiliki masa kehamilan sekitar 22 bulan, yang merupakan yang terpanjang dari semua mamalia darat.',
      scientificName: 'Loxodonta africana',
      originCountry: 'Afrika dan Asia',
    ),
    Animal(
      animalName: 'Harimau',
      imageUrl: 'assets/img/pembelajaran/harimau.png',
      description: 'Pelajari tentang raja hutan dari Asia.',
      content: 'Harimau adalah kucing besar yang berasal dari Asia. Mereka dikenal karena kekuatan dan corak belang yang khas. Habitat harimau mencakup hutan hujan tropis, sabana, dan daerah pegunungan. Mereka adalah hewan soliter yang berburu sendirian, terutama pada malam hari. Mangsa utama harimau termasuk rusa, babi hutan, dan terkadang hewan besar seperti kerbau. Harimau memiliki rahang kuat dan gigi taring yang tajam untuk membunuh mangsanya. Populasi harimau terancam oleh perburuan liar dan hilangnya habitat, membuat mereka termasuk spesies yang dilindungi.',
      scientificName: 'Panthera tigris',
      originCountry: 'Asia',
    ),
    Animal(
      animalName: 'Kanguru',
      imageUrl: 'assets/img/pembelajaran/kanguru.png',
      description: 'Kenali lebih jauh tentang marsupial khas Australia ini.',
      content: 'Kanguru adalah marsupial yang berasal dari Australia. Mereka terkenal karena kemampuan melompatnya yang luar biasa dan kantung perut di mana anak-anaknya berkembang. Kanguru hidup di berbagai habitat, mulai dari padang rumput hingga hutan. Mereka adalah hewan herbivora yang memakan rumput, daun, dan tumbuhan lainnya. Kanguru dapat melompat hingga sejauh 9 meter dalam sekali lompatan dan mencapai kecepatan hingga 60 km/jam. Populasi kanguru relatif stabil, tetapi beberapa spesies terancam oleh perburuan dan kehilangan habitat.',
      scientificName: 'Macropus',
      originCountry: 'Australia',
    ),
    Animal(
      animalName: 'Koala',
      imageUrl: 'assets/img/pembelajaran/koala.png',
      description: 'Temukan fakta menarik tentang koala yang menggemaskan.',
      content: 'Koala adalah marsupial yang juga berasal dari Australia dan dikenal karena penampilannya yang lucu dan kebiasaan tidur yang unik. Mereka menghabiskan sebagian besar waktunya di pohon eucalyptus, yang juga merupakan makanan utama mereka. Koala memiliki cakar yang kuat untuk memanjat pohon dan kantung perut untuk membawa anak-anaknya. Meskipun terlihat lamban, koala dapat bergerak cepat saat diperlukan. Populasi koala terancam oleh hilangnya habitat dan penyakit, tetapi upaya konservasi terus dilakukan untuk melindungi mereka.',
      scientificName: 'Phascolarctos cinereus',
      originCountry: 'Australia',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Belajar'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: animals.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              AnimalCard(animal: animals[index]),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}

class Animal {
  final String animalName;
  final String imageUrl;
  final String description;
  final String content;
  final String scientificName;
  final String originCountry;

  Animal({
    required this.animalName,
    required this.imageUrl,
    required this.description,
    required this.content,
    required this.scientificName,
    required this.originCountry,
  });
}

class AnimalCard extends StatelessWidget {
  final Animal animal;

  const AnimalCard({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalDetailScreen(animal: animal),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                animal.imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.animalName,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Jenis: Marsupialia',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      animal.description,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimalDetailScreen extends StatelessWidget {
  final Animal animal;

  const AnimalDetailScreen({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.animalName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(animal.imageUrl),
            SizedBox(height: 16.0),
            Text(
              'Nama Ilmiah: ${animal.scientificName}',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text(
              'Asal Negara: ${animal.originCountry}',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text(
              animal.content,
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
