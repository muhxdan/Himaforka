import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:js' as js;

class SocialMediaItem extends StatelessWidget {
  final String url, image;
  const SocialMediaItem({
    super.key,
    required this.url,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        String url = this.url;
        js.context.callMethod('open', [url, '_blank']);
      },
      color: Colors.white,
      icon: SvgPicture.asset(
        image,
        width: 20,
        height: 20,
      ),
      iconSize: 20,
      splashRadius: 25,
    );
  }
}
