import 'package:flutter/material.dart';

class SectionActivity extends StatelessWidget {
  const SectionActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Info Kegiatan HIMAFORKA",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 20),
        Text(
          "Contoh beberapa kegiatan di HIMAFORKA dan masih banyak kegiatan yang lainnya yang seru dan menarik",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 30),
        const ActivityInformationItem(
          imagePath: "assets/images/info1.png",
          title: "LK (Latihan Kader)",
          desc:
              "Universitas Teknologi Digital Indonesia memiliki beragam organisasi mahasiswa yang menawarkan berbagai kegiatan, proyek, dan event. Bergabunglah bersama kami dan temukan peluang untuk terlibat dalam berbagai aktivitas yang memperkaya pengalaman kuliahmu.",
        ),
        const SizedBox(
          height: 50,
        ),
        const ActivityInformationItem(
          imagePath: "assets/images/info2.png",
          title: "KULUM (Kuliah Umum)",
          desc:
              "Universitas Teknologi Digital Indonesia memiliki beragam organisasi mahasiswa yang menawarkan berbagai kegiatan, proyek, dan event. Bergabunglah bersama kami dan temukan peluang untuk terlibat dalam berbagai aktivitas yang memperkaya pengalaman kuliahmu.",
        ),
        const SizedBox(
          height: 50,
        ),
        const ActivityInformationItem(
          imagePath: "assets/images/info3.png",
          title: "Maroon Day",
          desc:
              "Universitas Teknologi Digital Indonesia memiliki beragam organisasi mahasiswa yang menawarkan berbagai kegiatan, proyek, dan event. Bergabunglah bersama kami dan temukan peluang untuk terlibat dalam berbagai aktivitas yang memperkaya pengalaman kuliahmu.",
        ),
      ],
    );
  }
}

class ActivityInformationItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desc;
  const ActivityInformationItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: (MediaQuery.of(context).size.width < 768)
          ? Axis.vertical
          : Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 250,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Text(
                desc,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
