import 'package:flutter/material.dart';
import 'package:himaforka/app/widgets/footer/section_copy_right.dart';
import 'package:himaforka/app/widgets/footer/section_info_footer.dart';
import 'package:himaforka/app/widgets/footer/section_info_univ.dart';

class SectionFooter extends StatelessWidget {
  const SectionFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1440),
        padding: const EdgeInsets.all(20),
        child: const Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionInfoFooter(),
                SizedBox(
                  width: 20,
                ),
                SectionInfoUniv(),
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            SectionCopyright(),
          ],
        ),
      ),
      // ),
    );
  }
}
