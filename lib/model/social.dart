import 'package:portfolio_master/utils/asset_utils.dart';

class SocialModel {
  SocialModel(this.name, this.iconAsset, this.thumbnailAsset, this.type, this.url);
  String name;
  String iconAsset;
  String thumbnailAsset;
  SocialType type;
  String url;
}

enum SocialType {
  LinkedIn,
  Github,
  CHPlay
}

SocialModel LinkedIn = SocialModel(
    "Linked-In",
    iconLinkedIn.fromAssets(),
    imgLinkedIn.fromAssets(),
    SocialType.LinkedIn,
    "https://www.linkedin.com/in/thanh-nguyen-hoai-512616181/"
);

SocialModel Github = SocialModel(
    "Github",
    iconGithub.fromAssets(),
    imgGithub.fromAssets(),
    SocialType.Github,
    "https://github.com/thanhnh98"
);

SocialModel CHPlay = SocialModel(
    "Play Store",
    iconChPlay.fromAssets(),
    imgChPlay.fromAssets(),
    SocialType.CHPlay,
    "https://play.google.com/store/apps/dev?id=5540559479839330036"
);

SocialModel AboutMe = SocialModel(
    "About Me",
    iconChPlay.fromAssets(),
    imgChPlay.fromAssets(),
    SocialType.CHPlay,
    "https://play.google.com/store/apps/dev?id=5540559479839330036"
);