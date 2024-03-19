import 'package:flutter/material.dart';

class SectionCopyright extends StatelessWidget {
  const SectionCopyright({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      child: Text(
        "© 2023 Salt Inc. Copyright and rights reserved",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
