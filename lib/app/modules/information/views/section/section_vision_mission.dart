import 'package:flutter/material.dart';
import 'package:himaforka/app/data/responsive.dart';
import 'package:himaforka/app/modules/home/views/section/section_benefit.dart';

class SectionVisionMission extends StatelessWidget {
  const SectionVisionMission({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SectionVisionMissionMobile(), desktop: SectionBenefitDesktop());
  }
}

class SectionVisionMissionDesktop extends StatelessWidget {
  const SectionVisionMissionDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: VisionMission(
            title: "Visi",
            desc:
                "Menjadikan Himpunan Mahasiswa Informatika yang lebih berkembang, berkualitas, profesional dan menjunjung tinggi nilai solidaritas dalam bersinergi serta menjadi wadah untuk mahasiswa Informatika dalam memberikan pelayanan dan informasi.",
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: VisionMission(
            title: "Misi",
            desc: [
              "Mengadakan kegiatan yang menunjang sisi akademis maupun non-akademis mahasiswa Informatika",
              "Menjadi wadah dalam menampung aspirasi mahasiswa Informatika",
              "Menciptakan anggota HIMAFORKA yang kreatif, inovatif, kritis, dan solutif",
              "Menjalin relasi yang luas dengan mengoptimalkan kegiatan yang berhubungan dengan internal maupun eksternal Universitas"
            ],
          ),
        )
      ],
    );
  }
}

class SectionVisionMissionMobile extends StatelessWidget {
  const SectionVisionMissionMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VisionMission(
          title: "Visi",
          desc:
              "Menjadikan Himpunan Mahasiswa Informatika yang lebih berkembang, berkualitas, profesional dan menjunjung tinggi nilai solidaritas dalam bersinergi serta menjadi wadah untuk mahasiswa Informatika dalam memberikan pelayanan dan informasi.",
        ),
        SizedBox(
          height: 50,
        ),
        VisionMission(
          title: "Misi",
          desc: [
            "Mengadakan kegiatan yang menunjang sisi akademis maupun non-akademis mahasiswa Informatika",
            "Menjadi wadah dalam menampung aspirasi mahasiswa Informatika",
            "Menciptakan anggota HIMAFORKA yang kreatif, inovatif, kritis, dan solutif",
            "Menjalin relasi yang luas dengan mengoptimalkan kegiatan yang berhubungan dengan internal maupun eksternal Universitas"
          ],
        )
      ],
    );
  }
}

class VisionMission extends StatelessWidget {
  final String title;
  final dynamic desc;

  const VisionMission({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        if (desc is String)
          Text(
            desc,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          ),
        if (desc is List<String>) VissionMissionList(list: desc),
      ],
    );
  }
}

class VissionMissionList extends StatelessWidget {
  final List<String> list;
  const VissionMissionList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in list) {
      widgetList.add(VissionMissionItem(text));
      widgetList.add(const SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class VissionMissionItem extends StatelessWidget {
  const VissionMissionItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
