import 'package:flutter/material.dart';
import 'package:education_app_master/constants/color.dart';
import 'package:education_app_master/constants/size.dart';
import 'package:education_app_master/models/category.dart';
import 'package:education_app_master/widgets/circle_button.dart';
import 'package:flutter/services.dart';

import '../widgets/search_testfield.dart';
import 'home_screen.dart';
import 'encyclopedia_screen.dart';
import 'pembelajaran_screen.dart';
import 'article_screen.dart';
import 'about_us_screen.dart';
import 'notification_screen.dart'; // Import NotificationScreen

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
            CustomAppBar(),
            Expanded(
              child: Body(),
            ),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jelajahi Fitur",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lihat Semua",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: kPrimaryColor),
                  ),
                )
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1, // Sesuaikan rasio aspek untuk memperpendek kotak
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              return FeatureCard(
                feature: featureList[index],
              );
            },
            itemCount: featureList.length,
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final Feature feature;
  const FeatureCard({
    Key? key,
    required this.feature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => feature.screen,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(8.0), // Sesuaikan margin
        padding: const EdgeInsets.all(8.0), // Sesuaikan padding
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), // Sesuaikan radius
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), // BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                feature.icon,
                size: kCategoryCardImageSize * 0.4, // Perkecil tinggi ikon lebih jauh
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              feature.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Sesuaikan ukuran teks
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Expanded(
              child: Text(
                feature.description,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage('assets/img/background2.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black54, // Use the correct syntax for colorFilter
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Halo,\nSelamat Pagi",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}

class Feature {
  final String name;
  final String description;
  final IconData icon;
  final Widget screen;

  Feature({
    required this.name,
    required this.description,
    required this.icon,
    required this.screen,
  });
}

final List<Feature> featureList = [
  Feature(
    name: 'Beranda',
    description: 'Selamat Datang di Ensiklofauna!',
    icon: Icons.home,
    screen: HomeScreen(),
  ),
  Feature(
    name: 'Ensiklopedia',
    description: 'Informasi Ensiklopedia Hewan',
    icon: Icons.book,
    screen: EncyclopediaScreen(),
  ),
  Feature(
    name: 'Pembelajaran',
    description: 'Galeri Gambar dan Video Hewan',
    icon: Icons.photo_library,
    screen: GalleryScreen(),
  ),
  Feature(
    name: 'Artikel',
    description: 'Artikel tentang Hewan',
    icon: Icons.article,
    screen: ArticleScreen(),
  ),
  Feature(
    name: 'Tentang Kami',
    description: 'Informasi tentang Ensiklofauna',
    icon: Icons.info,
    screen: AboutUsScreen(),
  ),
];
