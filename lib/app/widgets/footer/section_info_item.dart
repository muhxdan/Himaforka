import 'package:flutter/material.dart';

class SectionInfoItem extends StatelessWidget {
  final String title, desc;
  const SectionInfoItem({
    super.key,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          desc,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
              ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
