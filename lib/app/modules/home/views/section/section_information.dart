import 'package:flutter/material.dart';
import 'package:himaforka/app/data/responsive.dart';

class SectionInformation extends StatelessWidget {
  const SectionInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SectionInformationMobile(),
      desktop: SectionInformationDesktop(),
    );
  }
}

class SectionInformationDesktop extends StatelessWidget {
  const SectionInformationDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            width: 462,
            height: 450.68,
            child: Image.asset(
              "assets/images/img_home2.png",
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Apa itu HIMAFORKA?",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lembaga kemahasiswaan yang dibentuk dari kristaisasi kesamaan dasar pemikiran dan aspirasi mahasiswa khususnya program studi Informatika di Universitas Teknologi Digital Indonesia. HIMAFORKA Universitas Teknologi Digital Indonesia disahkan pada tanggal 18 April 2022.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SectionInformationMobile extends StatelessWidget {
  const SectionInformationMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          width: 300,
          // height: 450.68,
          child: Image.asset(
            "assets/images/img_home2.png",
          ),
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 800),
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Apa itu HIMAFORKA?",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lembaga kemahasiswaan yang dibentuk dari kristaisasi kesamaan dasar pemikiran dan aspirasi mahasiswa khususnya program studi Informatika di Universitas Teknologi Digital Indonesia. HIMAFORKA Universitas Teknologi Digital Indonesia disahkan pada tanggal 18 April 2022.",
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
