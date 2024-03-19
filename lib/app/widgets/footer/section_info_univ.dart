import 'package:flutter/material.dart';
import 'package:himaforka/app/widgets/footer/section_info_item.dart';

class SectionInfoUniv extends StatelessWidget {
  const SectionInfoUniv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerRight,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionInfoItem(
              title: "Alamat:",
              desc:
                  "Jl. Raya Janti Karang Jambe No. 143 Yogyakarta 55198, Indonesia.",
            ),
            SectionInfoItem(
              title: "Whatsapp:",
              desc: "+62 274 486664",
            ),
            SectionInfoItem(
              title: "Email:",
              desc: "info@utdi.ac.id",
            ),
          ],
        ),
      ),
    );
  }
}
