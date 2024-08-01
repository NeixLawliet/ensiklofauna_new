import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artikel tentang Hewan',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ArticleScreen(),
    );
  }
}

class ArticleScreen extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'Mengenal Jerapah',
      content:
          'Jerapah adalah mamalia tertinggi di dunia, terkenal dengan lehernya yang panjang. Mereka hidup di sabana Afrika dan memakan daun dari puncak pohon yang tidak bisa dijangkau hewan lain. Jerapah memiliki pola bintik unik yang berbeda pada setiap individu. '
          'Selain lehernya yang panjang, jerapah juga memiliki kaki yang panjang dan kuat yang memungkinkan mereka berlari dengan kecepatan hingga 60 km/jam dalam jarak pendek. Jerapah biasanya hidup dalam kelompok kecil yang disebut menara, yang terdiri dari beberapa betina dan anak-anaknya, serta satu atau dua jantan dewasa. '
          'Pada malam hari, jerapah biasanya tidur hanya sekitar 4-5 jam, sering kali berdiri atau dengan berbaring sebentar. Habitat mereka terancam oleh perusakan habitat dan perburuan liar, meskipun beberapa populasi dilindungi di taman nasional dan cagar alam. '
          'Upaya konservasi terus dilakukan untuk memastikan bahwa generasi mendatang masih dapat melihat hewan-hewan megah ini di alam liar. Sebagai contoh, program pengelolaan habitat dan patroli anti-perburuan telah menunjukkan hasil yang menjanjikan dalam beberapa tahun terakhir.',
      imageUrl: 'assets/img/artikel/jerapah.png',
    ),
    Article(
      title: 'Kehidupan Gajah Afrika',
      content:
          'Gajah Afrika adalah mamalia darat terbesar di dunia. Mereka dikenal karena ukuran tubuhnya yang besar, telinga yang lebar, dan belalai panjang yang multifungsi. Gajah Afrika hidup dalam kawanan yang dipimpin oleh betina tertua. '
          'Belalai mereka digunakan untuk berbagai keperluan, seperti mengambil makanan, minum air, dan bahkan sebagai alat komunikasi. Selain itu, telinga besar gajah membantu mereka mengatur suhu tubuh dengan memancarkan panas. '
          'Gajah Afrika memiliki ingatan yang sangat baik dan kemampuan sosial yang kompleks. Mereka dikenal memiliki ikatan keluarga yang kuat dan sering kali terlihat berkabung atas kematian anggota keluarga mereka. '
          'Sayangnya, populasi gajah Afrika menghadapi ancaman besar dari perburuan untuk gading mereka dan kehilangan habitat akibat ekspansi manusia. Organisasi konservasi bekerja keras untuk melindungi gajah melalui upaya anti-perburuan, perlindungan habitat, dan pendidikan masyarakat. '
          'Gajah juga memainkan peran penting dalam ekosistem sebagai "penjaga hutan" yang membantu menyebarkan benih tumbuhan dan membuka jalur di hutan. Tanpa mereka, keseimbangan ekosistem bisa terganggu, yang berdampak pada banyak spesies lainnya.',
      imageUrl: 'assets/img/artikel/gajah.png',
    ),
    Article(
      title: 'Fakta Menarik tentang Musang',
      content:
          'Musang adalah hewan kecil yang aktif dan lincah, sering ditemukan di hutan dan taman. Mereka memiliki ekor lebat dan bulu halus, dengan kemampuan memanjat pohon yang sangat baik. '
          'Musang adalah omnivora, memakan berbagai jenis makanan termasuk buah-buahan, serangga, dan mamalia kecil. Pola makan yang beragam ini membantu mereka beradaptasi dengan berbagai lingkungan. '
          'Musang memiliki kemampuan berkomunikasi yang baik melalui suara, aroma, dan gerakan tubuh. Mereka sering mengeluarkan suara decitan atau dengkuran sebagai bentuk komunikasi dengan musang lain. '
          'Musang memainkan peran penting dalam ekosistem sebagai pemangsa serangga dan hewan kecil, membantu mengendalikan populasi hama. Mereka juga dikenal dengan kebiasaan mengumpulkan makanan untuk persediaan, yang membantu mereka bertahan selama musim yang lebih sulit. '
          'Dalam beberapa budaya, musang dianggap sebagai simbol kelincahan dan kecerdikan. Mereka sering digambarkan dalam cerita rakyat dan mitologi sebagai makhluk yang cerdik dan licik. '
          'Namun, musang juga menghadapi ancaman dari hilangnya habitat dan perburuan. Beberapa spesies musang dilindungi oleh undang-undang konservasi, dan upaya sedang dilakukan untuk melindungi habitat alami mereka serta mendidik masyarakat tentang pentingnya keberadaan musang dalam ekosistem.',
      imageUrl: 'assets/img/artikel/musang.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artikel tentang Hewan'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    articles[index].imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text(
                    articles[index].title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    articles[index].content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ArticleDetailScreen(article: articles[index]),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  ArticleDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                article.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              article.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: article.content),
                  // Add more TextSpan for additional formatting if needed
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Informasi Tambahan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Gajah Afrika adalah salah satu spesies yang paling penting di Afrika. Mereka membantu menjaga keseimbangan ekosistem melalui kegiatan mereka seperti merobohkan pohon yang memungkinkan tumbuhan lain untuk berkembang.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Referensi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. WWF\n2. National Geographic\n3. IUCN Red List',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String content;
  final String imageUrl;

  Article({
    required this.title,
    required this.content,
    required this.imageUrl,
  });
}
