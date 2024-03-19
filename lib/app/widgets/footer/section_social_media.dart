import 'package:flutter/material.dart';
import 'package:himaforka/app/widgets/footer/social_media_item.dart';

class SectionSocialMedia extends StatelessWidget {
  const SectionSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SocialMediaItem(
          image: "assets/images/ic_youtube.svg",
          url: "https://www.youtube.com/@himforkautdi4861",
        ),
        SocialMediaItem(
          image: "assets/images/ic_instagram.svg",
          url: "https://instagram.com/himaforka_utdi",
        ),
        SocialMediaItem(
          image: "assets/images/ic_twitter.svg",
          url: "https://twitter.com/himaforka_utdi",
        ),
        SocialMediaItem(
          image: "assets/images/ic_linkedin.svg",
          url: "https://www.linkedin.com/in/himaforka-utdi-62938824a",
        ),
        SocialMediaItem(
          image: "assets/images/ic_facebook.svg",
          url: "https://www.facebook.com/hmjtiakakom",
        ),
      ],
    );
  }
}
