import 'package:flutter/material.dart';
import 'package:himaforka/app/data/responsive.dart';

class SectionBenefit extends StatelessWidget {
  const SectionBenefit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SectionBenefitMobile(), desktop: SectionBenefitDesktop());
  }
}

class SectionBenefitMobile extends StatelessWidget {
  const SectionBenefitMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Apa Keuntungan Bergabung HIMAFORKA?",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Dengan bergabung bersama kami, tentu banyak keuntungannya loh, yuk liat apa yang bisa kamu dapat!",
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BenefitItem(
                image: "assets/images/section2-1.png",
                title: "Pengembangan diri",
                desc:
                    'Bergabung dalam organisasi kampus membantu mengasah keterampilan dan bakatmu.',
              ),
              BenefitItem(
                  image: "assets/images/section2-2.png",
                  title: 'Jaringan dan Pertemanan',
                  desc:
                      'Organisasi mahasiswa memungkinkanmu membangun hubungan dan pertemanan yang luas.'),
              BenefitItem(
                image: "assets/images/section2-3.png",
                title: 'Kontribusi Sosial',
                desc:
                    'Melalui organisasi, kamu bisa berkontribusi positif pada komunitas kampus dan masyarakat sekitarnya.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SectionBenefitDesktop extends StatelessWidget {
  const SectionBenefitDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Apa Keuntungan Bergabung HIMAFORKA?",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 560,
          child: Text(
            "Dengan bergabung bersama kami, tentu banyak keuntungannya loh, yuk liat apa yang bisa kamu dapat!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BenefitItem(
              image: "assets/images/section2-1.png",
              title: "Pengembangan diri",
              desc:
                  'Bergabung dalam organisasi kampus membantu mengasah keterampilan dan bakatmu.',
            ),
            BenefitItem(
                image: "assets/images/section2-2.png",
                title: 'Jaringan dan Pertemanan',
                desc:
                    'Organisasi mahasiswa memungkinkanmu membangun hubungan dan pertemanan yang luas.'),
            BenefitItem(
              image: "assets/images/section2-3.png",
              title: 'Kontribusi Sosial',
              desc:
                  'Melalui organisasi, kamu bisa berkontribusi positif pada komunitas kampus dan masyarakat sekitarnya.',
            ),
          ],
        ),
      ],
    );
  }
}

class BenefitItem extends StatelessWidget {
  final String image, title, desc;
  const BenefitItem(
      {super.key,
      required this.image,
      required this.title,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 335,
      child: Column(
        children: [
          Image.asset(
            image,
            width: 55,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            desc,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
