extension AssetsUtil on String {
  String fromAssets(){
    return "assets/$this";
  }

  String fromLottieFiles() {
    return "assets/$this";
  }
}

const String icAndroid = "ic_android.png";
const String iconGithub = "github.png";
const String iconLinkedIn = "linkedin.png";
const String iconChPlay = "chplay.png";
const String iconAndroidPng = "android.png";
const String imgLinkedIn = "linked_in.png";
const String imgGithub = "github_thumb.png";
const String imgChPlay = "chplay_thumb.png";
const String imgPlaceHolder = "placeholder.png";
const String imgBackground = "img_bg.jpg";
const String imgBlackBackground = "img_black_bg.jpg";

class LottieFilesAsset {
  static final String android = "android.json".fromLottieFiles();
}

