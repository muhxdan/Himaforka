import 'package:flutter/material.dart';
import 'package:himaforka/app/widgets/footer/section_social_media.dart';

class SectionInfoFooter extends StatelessWidget {
  const SectionInfoFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/logo_white.png",
                width: 55,
                height: 55,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/logo_hima_white.png",
                width: 45,
                height: 45,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Situs ini diperuntukkan khusus bagi Mahasiswa Universitas Teknologi Digital Indonesia jurusan Informatika untuk Mendapatkan informasi mengenai HIMAFORKA serta tempat untuk mendaftar menjadi anggota HIMAFORKA.",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 30,
          ),
          const SectionSocialMedia()
        ],
      ),
    );
  }
}
