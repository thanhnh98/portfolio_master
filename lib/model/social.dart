import 'package:portfolio_master/utils/asset_utils.dart';

class SocialModel {
  SocialModel(this.name, this.assets, this.type);
  String name;
  String assets;
  SocialType type;
}

enum SocialType {
  LinkedIn,
  Github,
  CHPlay
}

SocialModel LinkedIn = SocialModel(
  "Linked-In",
  iconLinkedIn.fromAssets(),
  SocialType.LinkedIn
);

SocialModel Github = SocialModel(
  "Github",
  iconGithub.fromAssets(),
  SocialType.Github
);

SocialModel CHPlay = SocialModel(
  "Play Store",
  iconChPlay.fromAssets(),
  SocialType.CHPlay
);