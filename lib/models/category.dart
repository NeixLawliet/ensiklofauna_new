import 'course.dart';

class Category {
  final String name;
  final String thumbnail;
  final int noOfCourses;
  final List<Course> courses;

  Category({
    required this.name,
    required this.thumbnail,
    required this.noOfCourses,
    required this.courses,
  });
}

// Contoh data
List<Category> categoryList = [
  Category(
    name: 'Herbivora',
    thumbnail: 'assets/icons/herbivora.png',
    noOfCourses: 55,
    courses: herbivoraCourses,
  ),
  Category(
    name: 'Karnivora',
    thumbnail: 'assets/icons/karnivora.png',
    noOfCourses: 20,
    courses: karnivoraCourses,
  ),
  Category(
    name: 'Mamalia',
    thumbnail: 'assets/icons/mamalia.png',
    noOfCourses: 16,
    courses: mamaliaCourses,
  ),
  Category(
    name: 'Amfibi',
    thumbnail: 'assets/icons/amfibi.png',
    noOfCourses: 25,
    courses: amfibiCourses,
  ),
];

// Data kursus untuk setiap kategori
List<Course> herbivoraCourses = [
  Course(
    author: "Neix",
    completedPercentage: .75,
    name: "Apa Itu Herbivora",
    thumbnail: "assets/icons/eco.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .60,
    name: "Macam Macam Hewan Herbivora",
    thumbnail: "assets/icons/nature.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .75,
    name: "Macam Macam Makananan Herbivora",
    thumbnail: "assets/icons/restaurant.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .80,
    name: "Peran Herbivora di Ekosistem",
    thumbnail: "assets/icons/public.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .50,
    name: "Hewan Herbivora di Hutan",
    thumbnail: "assets/icons/forest.png",
  ),
];

List<Course> karnivoraCourses = [
  Course(
    author: "Neix",
    completedPercentage: .50,
    name: "Apa Itu Karnivora",
    thumbnail: "assets/icons/pets.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .70,
    name: "Macam Macam Hewan Karnivora",
    thumbnail: "assets/icons/paw.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .65,
    name: "Makanan Karnivora",
    thumbnail: "assets/icons/restaurant_menu.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .80,
    name: "Peran Karnivora di Alam",
    thumbnail: "assets/icons/terrain.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .75,
    name: "Hewan Karnivora di Gurun",
    thumbnail: "assets/icons/desert.png",
  ),
];

List<Course> mamaliaCourses = [
  Course(
    author: "Neix",
    completedPercentage: .40,
    name: "Apa Itu Mamalia",
    thumbnail: "assets/icons/accessibility_new.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .80,
    name: "Macam Macam Hewan Mamalia",
    thumbnail: "assets/icons/groups.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .55,
    name: "Ciri-Ciri Mamalia",
    thumbnail: "assets/icons/fingerprint.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .75,
    name: "Mamalia Terbesar dan Terkecil",
    thumbnail: "assets/icons/height.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .65,
    name: "Mamalia di Laut",
    thumbnail: "assets/icons/waves.png",
  ),
];

List<Course> amfibiCourses = [
  Course(
    author: "Neix",
    completedPercentage: .65,
    name: "Apa Itu Amfibi",
    thumbnail: "assets/icons/science.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .85,
    name: "Macam Macam Hewan Amfibi",
    thumbnail: "assets/icons/emoji_nature.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .70,
    name: "Habitat Amfibi",
    thumbnail: "assets/icons/home.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .90,
    name: "Peran Amfibi di Ekosistem",
    thumbnail: "assets/icons/nature_people.png",
  ),
  Course(
    author: "Neix",
    completedPercentage: .55,
    name: "Amfibi di Air dan Darat",
    thumbnail: "assets/icons/water.png",
  ),
];
