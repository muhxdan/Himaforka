import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo_hima.png",
          width: 45,
          height: 45,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          "HIMAFORKA \nUTDI",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              height: 1.5, letterSpacing: 2, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
