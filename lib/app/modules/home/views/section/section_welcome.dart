import 'package:flutter/material.dart';
import 'package:himaforka/app/data/responsive.dart';
import 'package:himaforka/app/widgets/custom_button.dart';

class SectionWelcome extends StatelessWidget {
  const SectionWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                  "Selamat Datang di ",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "HIMAFORKA",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Jangan lewatkan kesempatan untuk menjadi bagian dari komunitas kami! Bergabunglah sekarang dan nikmati manfaat eksklusif yang hanya bisa Anda dapatkan di dalamnya.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Daftar Sekarang",
                  onPressed: () {},
                  width: 200,
                  height: 55,
                )
              ],
            ),
          ),
        ),
        (Responsive.isDesktop(context))
            ? Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  width: 534,
                  height: 455,
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: Image.asset(
                    "assets/images/img_home1.png",
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
