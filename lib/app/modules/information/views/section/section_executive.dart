import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class SectionExecutive extends StatelessWidget {
  const SectionExecutive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> executiveMembers = [
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph1.png",
        status: "Ketua",
        name: "Maulana Latifnabil",
      ),
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph2.png",
        status: "Wakil Ketua",
        name: "Izz Sabdo Negoro",
      ),
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph3.png",
        status: "Sekretaris",
        name: "Febi Maharani",
      ),
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph4.png",
        status: "Bendahara",
        name: "Carmelita Cynthia Dagur",
      ),
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph5.png",
        status: "Koor SDD",
        name: "Ryan Wildan Edelwise",
      ),
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph6.png",
        status: "Koor Networking",
        name: "Ellinda",
      ),
      const DailyExecutiveMember(
        imagePath: "assets/images/img_ph7.png",
        status: "Koor Internal",
        name: "Aphrodyta Salsa",
      ),
    ];
    return Column(
      children: [
        Text(
          "Jajaran Pengurus Harian (PH)",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          "Berikut beberapa profil pengurus dan setiap koor divisi di HIMAFORKA",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: (MediaQuery.of(context).size.width >= 820)
                  ? 250
                  : (MediaQuery.of(context).size.width >= 490 &&
                          MediaQuery.of(context).size.width < 820)
                      ? 480
                      : (MediaQuery.of(context).size.width >= 380 &&
                              MediaQuery.of(context).size.width < 490)
                          ? 680
                          : (MediaQuery.of(context).size.width >= 270 &&
                                  MediaQuery.of(context).size.width < 380)
                              ? 900
                              : 1430,
              child: ResponsiveGridList(
                desiredItemWidth: 100,
                minSpacing: 10,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: executiveMembers,
              ),
            );
          },
        ),
      ],
    );
  }
}

class DailyExecutiveMember extends StatelessWidget {
  final String imagePath;
  final String status;
  final String name;
  const DailyExecutiveMember(
      {super.key,
      required this.imagePath,
      required this.status,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 109,
          height: 154,
        ),
        Text(
          status,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
