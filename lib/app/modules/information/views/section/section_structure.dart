import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/data/responsive.dart';

class SectionStructure extends StatelessWidget {
  const SectionStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SectionStructureMobile(), desktop: SectionStructureDesktop());
  }
}

class SectionStructureDesktop extends StatelessWidget {
  const SectionStructureDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/img_strutkur_organisasi.png",
              width: 465,
              height: 443,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Struktur Organisasi HIMAFORKA",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Berdasarkan struktur organisasi HIMAFORKA terdapat beberapa divisi, didalam divisi terdapat beberapa anggota yang akan membantu setiap koor menjalankan tanggung jawab setiap divisi tersebut. Dan berikut jumlah keseluruhan PH dan anggota inti yang terdapat di HIMAFORKA",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MembersItem(
                        title: "Pengurus Harian",
                        total: "16",
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: const MembersItem(
                          title: "Anggota Inti",
                          total: "30",
                        ),
                      ),
                      const MembersItem(
                        title: "Jumlah Keseluruhan",
                        total: "49",
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class SectionStructureMobile extends StatelessWidget {
  const SectionStructureMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/img_strutkur_organisasi.png",
            width: 350,
            // height: 443,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Struktur Organisasi HIMAFORKA",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Berdasarkan struktur organisasi HIMAFORKA terdapat beberapa divisi, didalam divisi terdapat beberapa anggota yang akan membantu setiap koor menjalankan tanggung jawab setiap divisi tersebut. Dan berikut jumlah keseluruhan PH dan anggota inti yang terdapat di HIMAFORKA",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 30,
                ),
                (Get.width < 520)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const MembersItem(
                            title: "Pengurus Harian",
                            total: "16",
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30,
                            ),
                            child: const MembersItem(
                              title: "Anggota Inti",
                              total: "30",
                            ),
                          ),
                          const MembersItem(
                            title: "Jumlah Keseluruhan",
                            total: "49",
                          ),
                        ],
                      )
                    : Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const MembersItem(
                              title: "Pengurus Harian",
                              total: "16",
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 30,
                              ),
                              child: const MembersItem(
                                title: "Anggota Inti",
                                total: "30",
                              ),
                            ),
                            const MembersItem(
                              title: "Jumlah Keseluruhan",
                              total: "49",
                            ),
                          ],
                        ),
                      ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class MembersItem extends StatelessWidget {
  final String title;
  final String total;

  const MembersItem({super.key, required this.title, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          total,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
        ),
      ],
    );
  }
}
